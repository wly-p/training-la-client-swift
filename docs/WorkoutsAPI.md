# WorkoutsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorkout**](WorkoutsAPI.md#createworkout) | **POST** /v1/workouts | 建立訓練紀錄（workout + sets 整包）
[**deleteWorkout**](WorkoutsAPI.md#deleteworkout) | **DELETE** /v1/workouts/{id} | 刪除紀錄（級聯刪除其 sets）
[**getWorkout**](WorkoutsAPI.md#getworkout) | **GET** /v1/workouts/{id} | 取得完整紀錄（含 sets）
[**listWorkouts**](WorkoutsAPI.md#listworkouts) | **GET** /v1/workouts | 列出訓練紀錄（僅 header；可依日期區間過濾，date 新到舊）
[**replaceWorkout**](WorkoutsAPI.md#replaceworkout) | **PUT** /v1/workouts/{id} | 整包取代紀錄（header + sets 全數重建）


# **createWorkout**
```swift
    open class func createWorkout(workoutInput: WorkoutInput, completion: @escaping (_ data: Workout?, _ error: Error?) -> Void)
```

建立訓練紀錄（workout + sets 整包）

workout 存在即代表已發生；started_at / ended_at 為可選 metadata。 每組實際 weight / reps 必填（status 未帶預設 done）； from_plan_set_id 為 null＝臨時加練；target_* 為目標快照（課表事後被改不影響此紀錄）。 同一天可有多筆 workouts（一天二練不受限）。 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let workoutInput = WorkoutInput(id: 123, planWorkoutId: 123, date: "date_example", startedAt: Date(), endedAt: Date(), overallFeeling: 123, note: "note_example", sets: [WorkoutSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, weight: Weight(value: 123, unit: "unit_example"), reps: 123, status: WorkoutSetStatus(), fromPlanSetId: 123, targetWeight: nil, targetReps: 123)]) // WorkoutInput | 

// 建立訓練紀錄（workout + sets 整包）
WorkoutsAPI.createWorkout(workoutInput: workoutInput) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workoutInput** | [**WorkoutInput**](WorkoutInput.md) |  | 

### Return type

[**Workout**](Workout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkout**
```swift
    open class func deleteWorkout(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

刪除紀錄（級聯刪除其 sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 刪除紀錄（級聯刪除其 sets）
WorkoutsAPI.deleteWorkout(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkout**
```swift
    open class func getWorkout(id: UUID, completion: @escaping (_ data: Workout?, _ error: Error?) -> Void)
```

取得完整紀錄（含 sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 取得完整紀錄（含 sets）
WorkoutsAPI.getWorkout(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

[**Workout**](Workout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkouts**
```swift
    open class func listWorkouts(from: String? = nil, to: String? = nil, completion: @escaping (_ data: [WorkoutSummary]?, _ error: Error?) -> Void)
```

列出訓練紀錄（僅 header；可依日期區間過濾，date 新到舊）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let from = "from_example" // String |  (optional)
let to = "to_example" // String |  (optional)

// 列出訓練紀錄（僅 header；可依日期區間過濾，date 新到舊）
WorkoutsAPI.listWorkouts(from: from, to: to) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String** |  | [optional] 
 **to** | **String** |  | [optional] 

### Return type

[**[WorkoutSummary]**](WorkoutSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceWorkout**
```swift
    open class func replaceWorkout(id: UUID, workoutInput: WorkoutInput, completion: @escaping (_ data: Workout?, _ error: Error?) -> Void)
```

整包取代紀錄（header + sets 全數重建）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 
let workoutInput = WorkoutInput(id: 123, planWorkoutId: 123, date: "date_example", startedAt: Date(), endedAt: Date(), overallFeeling: 123, note: "note_example", sets: [WorkoutSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, weight: Weight(value: 123, unit: "unit_example"), reps: 123, status: WorkoutSetStatus(), fromPlanSetId: 123, targetWeight: nil, targetReps: 123)]) // WorkoutInput | 

// 整包取代紀錄（header + sets 全數重建）
WorkoutsAPI.replaceWorkout(id: id, workoutInput: workoutInput) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 
 **workoutInput** | [**WorkoutInput**](WorkoutInput.md) |  | 

### Return type

[**Workout**](Workout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

