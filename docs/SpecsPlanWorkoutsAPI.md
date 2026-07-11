# SpecsPlanWorkoutsAPI

All URIs are relative to *https://training-la-api-dev.wly.lol*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStandalonePlanWorkout**](SpecsPlanWorkoutsAPI.md#createstandaloneplanworkout) | **POST** /v1/specs/plan-workouts | 建立獨立訓練範本積木（workout + sets 整包；specs_plan_id 固定為 null）
[**deletePlanWorkoutTemplate**](SpecsPlanWorkoutsAPI.md#deleteplanworkouttemplate) | **DELETE** /v1/specs/plan-workouts/{id} | 刪除訓練範本（級聯刪除其 sets）
[**getPlanWorkoutTemplate**](SpecsPlanWorkoutsAPI.md#getplanworkouttemplate) | **GET** /v1/specs/plan-workouts/{id} | 取得訓練範本（獨立積木或掛在 plan 底下者皆可）
[**listStandalonePlanWorkouts**](SpecsPlanWorkoutsAPI.md#liststandaloneplanworkouts) | **GET** /v1/specs/plan-workouts | 列出獨立訓練範本積木（僅 specs_plan_id 為 null 者）
[**replacePlanWorkoutTemplate**](SpecsPlanWorkoutsAPI.md#replaceplanworkouttemplate) | **PUT** /v1/specs/plan-workouts/{id} | 整包取代 name 與 sets（不變更 specs_plan_id / order_index）


# **createStandalonePlanWorkout**
```swift
    open class func createStandalonePlanWorkout(specsPlanWorkoutInput: SpecsPlanWorkoutInput, completion: @escaping (_ data: SpecsPlanWorkout?, _ error: Error?) -> Void)
```

建立獨立訓練範本積木（workout + sets 整包；specs_plan_id 固定為 null）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let specsPlanWorkoutInput = SpecsPlanWorkoutInput(id: 123, name: "name_example", sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)]) // SpecsPlanWorkoutInput | 

// 建立獨立訓練範本積木（workout + sets 整包；specs_plan_id 固定為 null）
SpecsPlanWorkoutsAPI.createStandalonePlanWorkout(specsPlanWorkoutInput: specsPlanWorkoutInput) { (response, error) in
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
 **specsPlanWorkoutInput** | [**SpecsPlanWorkoutInput**](SpecsPlanWorkoutInput.md) |  | 

### Return type

[**SpecsPlanWorkout**](SpecsPlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlanWorkoutTemplate**
```swift
    open class func deletePlanWorkoutTemplate(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

刪除訓練範本（級聯刪除其 sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 刪除訓練範本（級聯刪除其 sets）
SpecsPlanWorkoutsAPI.deletePlanWorkoutTemplate(id: id) { (response, error) in
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

# **getPlanWorkoutTemplate**
```swift
    open class func getPlanWorkoutTemplate(id: UUID, completion: @escaping (_ data: SpecsPlanWorkout?, _ error: Error?) -> Void)
```

取得訓練範本（獨立積木或掛在 plan 底下者皆可）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 取得訓練範本（獨立積木或掛在 plan 底下者皆可）
SpecsPlanWorkoutsAPI.getPlanWorkoutTemplate(id: id) { (response, error) in
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

[**SpecsPlanWorkout**](SpecsPlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStandalonePlanWorkouts**
```swift
    open class func listStandalonePlanWorkouts(completion: @escaping (_ data: [SpecsPlanWorkout]?, _ error: Error?) -> Void)
```

列出獨立訓練範本積木（僅 specs_plan_id 為 null 者）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient


// 列出獨立訓練範本積木（僅 specs_plan_id 為 null 者）
SpecsPlanWorkoutsAPI.listStandalonePlanWorkouts() { (response, error) in
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

[**[SpecsPlanWorkout]**](SpecsPlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replacePlanWorkoutTemplate**
```swift
    open class func replacePlanWorkoutTemplate(id: UUID, specsPlanWorkoutInput: SpecsPlanWorkoutInput, completion: @escaping (_ data: SpecsPlanWorkout?, _ error: Error?) -> Void)
```

整包取代 name 與 sets（不變更 specs_plan_id / order_index）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 
let specsPlanWorkoutInput = SpecsPlanWorkoutInput(id: 123, name: "name_example", sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)]) // SpecsPlanWorkoutInput | 

// 整包取代 name 與 sets（不變更 specs_plan_id / order_index）
SpecsPlanWorkoutsAPI.replacePlanWorkoutTemplate(id: id, specsPlanWorkoutInput: specsPlanWorkoutInput) { (response, error) in
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
 **specsPlanWorkoutInput** | [**SpecsPlanWorkoutInput**](SpecsPlanWorkoutInput.md) |  | 

### Return type

[**SpecsPlanWorkout**](SpecsPlanWorkout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

