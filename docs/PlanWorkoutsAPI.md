# PlanWorkoutsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlanWorkout**](PlanWorkoutsAPI.md#createplanworkout) | **POST** /v1/plan-workouts | 建立單獨排課（整包；或帶 from_specs_plan_workout_id 從範本積木複製）
[**deletePlanWorkout**](PlanWorkoutsAPI.md#deleteplanworkout) | **DELETE** /v1/plan-workouts/{id} | 刪除訓練計劃（級聯刪除其 sets）
[**getPlanWorkout**](PlanWorkoutsAPI.md#getplanworkout) | **GET** /v1/plan-workouts/{id} | 取得一筆訓練計劃（單獨排課或掛在菜單底下者皆可）
[**listPlanWorkouts**](PlanWorkoutsAPI.md#listplanworkouts) | **GET** /v1/plan-workouts | 列出單獨排課（僅 plan_id 為 null 者；日期近到遠、無日期在後）
[**replacePlanWorkout**](PlanWorkoutsAPI.md#replaceplanworkout) | **PUT** /v1/plan-workouts/{id} | 整包取代 name/status/date 與 sets（標記完成也走這裡）


# **createPlanWorkout**
```swift
    open class func createPlanWorkout(planWorkoutInput: PlanWorkoutInput, completion: @escaping (_ data: PlanWorkout?, _ error: Error?) -> Void)
```

建立單獨排課（整包；或帶 from_specs_plan_workout_id 從範本積木複製）

帶 from_specs_plan_workout_id 時 sets 必須為空；date 可選（null＝未排日期）。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let planWorkoutInput = PlanWorkoutInput(id: 123, name: "name_example", status: PlanWorkoutStatus(), date: "date_example", fromSpecsPlanWorkoutId: 123, sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)]) // PlanWorkoutInput | 

// 建立單獨排課（整包；或帶 from_specs_plan_workout_id 從範本積木複製）
PlanWorkoutsAPI.createPlanWorkout(planWorkoutInput: planWorkoutInput) { (response, error) in
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
 **planWorkoutInput** | [**PlanWorkoutInput**](PlanWorkoutInput.md) |  | 

### Return type

[**PlanWorkout**](PlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlanWorkout**
```swift
    open class func deletePlanWorkout(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

刪除訓練計劃（級聯刪除其 sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 刪除訓練計劃（級聯刪除其 sets）
PlanWorkoutsAPI.deletePlanWorkout(id: id) { (response, error) in
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

# **getPlanWorkout**
```swift
    open class func getPlanWorkout(id: UUID, completion: @escaping (_ data: PlanWorkout?, _ error: Error?) -> Void)
```

取得一筆訓練計劃（單獨排課或掛在菜單底下者皆可）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 取得一筆訓練計劃（單獨排課或掛在菜單底下者皆可）
PlanWorkoutsAPI.getPlanWorkout(id: id) { (response, error) in
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

[**PlanWorkout**](PlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlanWorkouts**
```swift
    open class func listPlanWorkouts(completion: @escaping (_ data: [PlanWorkout]?, _ error: Error?) -> Void)
```

列出單獨排課（僅 plan_id 為 null 者；日期近到遠、無日期在後）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient


// 列出單獨排課（僅 plan_id 為 null 者；日期近到遠、無日期在後）
PlanWorkoutsAPI.listPlanWorkouts() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[PlanWorkout]**](PlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replacePlanWorkout**
```swift
    open class func replacePlanWorkout(id: UUID, planWorkoutInput: PlanWorkoutInput, completion: @escaping (_ data: PlanWorkout?, _ error: Error?) -> Void)
```

整包取代 name/status/date 與 sets（標記完成也走這裡）

不變更 plan_id / order_index / from_specs_plan_workout_id；結構調整請走 plan 端點。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 
let planWorkoutInput = PlanWorkoutInput(id: 123, name: "name_example", status: PlanWorkoutStatus(), date: "date_example", fromSpecsPlanWorkoutId: 123, sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)]) // PlanWorkoutInput | 

// 整包取代 name/status/date 與 sets（標記完成也走這裡）
PlanWorkoutsAPI.replacePlanWorkout(id: id, planWorkoutInput: planWorkoutInput) { (response, error) in
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
 **planWorkoutInput** | [**PlanWorkoutInput**](PlanWorkoutInput.md) |  | 

### Return type

[**PlanWorkout**](PlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

