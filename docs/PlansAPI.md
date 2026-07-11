# PlansAPI

All URIs are relative to *https://training-la-api-dev.wly.lol*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlan**](PlansAPI.md#createplan) | **POST** /v1/plans | 建立個人菜單（整包；或帶 from_specs_plan_id 從範本整套複製）
[**deletePlan**](PlansAPI.md#deleteplan) | **DELETE** /v1/plans/{id} | 刪除菜單（級聯刪除其 workouts / sets）
[**getPlan**](PlansAPI.md#getplan) | **GET** /v1/plans/{id} | 取得完整菜單（含 workouts / sets）
[**listPlans**](PlansAPI.md#listplans) | **GET** /v1/plans | 列出個人菜單（僅 header；可依 status 過濾，建立時間新到舊）
[**replacePlan**](PlansAPI.md#replaceplan) | **PUT** /v1/plans/{id} | 整包取代菜單（header + workouts/sets 全數重建；客戶端送完整狀態）


# **createPlan**
```swift
    open class func createPlan(planInput: PlanInput, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

建立個人菜單（整包；或帶 from_specs_plan_id 從範本整套複製）

兩種模式： 1. **整包建立**：帶 name + workouts（結構同範本層，另可帶各 workout 的 status/date）。 2. **從範本複製**：帶 from_specs_plan_id（此時 workouts 必須為空）；    name/description 未帶時沿用範本，所有 workout status 歸零為 not_started，    並記錄 from_specs_plan_id / from_specs_plan_workout_id 來源。 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let planInput = PlanInput(id: 123, name: "name_example", description: "description_example", status: PlanStatus(), fromSpecsPlanId: 123, workouts: [PlanWorkoutInput(id: 123, name: "name_example", status: PlanWorkoutStatus(), date: "date_example", fromSpecsPlanWorkoutId: 123, sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)])]) // PlanInput | 

// 建立個人菜單（整包；或帶 from_specs_plan_id 從範本整套複製）
PlansAPI.createPlan(planInput: planInput) { (response, error) in
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
 **planInput** | [**PlanInput**](PlanInput.md) |  | 

### Return type

[**Plan**](Plan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlan**
```swift
    open class func deletePlan(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

刪除菜單（級聯刪除其 workouts / sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 刪除菜單（級聯刪除其 workouts / sets）
PlansAPI.deletePlan(id: id) { (response, error) in
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

# **getPlan**
```swift
    open class func getPlan(id: UUID, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

取得完整菜單（含 workouts / sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 取得完整菜單（含 workouts / sets）
PlansAPI.getPlan(id: id) { (response, error) in
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

[**Plan**](Plan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlans**
```swift
    open class func listPlans(status: PlanStatus? = nil, completion: @escaping (_ data: [PlanSummary]?, _ error: Error?) -> Void)
```

列出個人菜單（僅 header；可依 status 過濾，建立時間新到舊）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let status = PlanStatus() // PlanStatus |  (optional)

// 列出個人菜單（僅 header；可依 status 過濾，建立時間新到舊）
PlansAPI.listPlans(status: status) { (response, error) in
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
 **status** | [**PlanStatus**](.md) |  | [optional] 

### Return type

[**[PlanSummary]**](PlanSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replacePlan**
```swift
    open class func replacePlan(id: UUID, planInput: PlanInput, completion: @escaping (_ data: Plan?, _ error: Error?) -> Void)
```

整包取代菜單（header + workouts/sets 全數重建；客戶端送完整狀態）

from_specs_plan_id 僅建立時有效，帶入會回 400；DB 原值保留不變。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 
let planInput = PlanInput(id: 123, name: "name_example", description: "description_example", status: PlanStatus(), fromSpecsPlanId: 123, workouts: [PlanWorkoutInput(id: 123, name: "name_example", status: PlanWorkoutStatus(), date: "date_example", fromSpecsPlanWorkoutId: 123, sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)])]) // PlanInput | 

// 整包取代菜單（header + workouts/sets 全數重建；客戶端送完整狀態）
PlansAPI.replacePlan(id: id, planInput: planInput) { (response, error) in
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
 **planInput** | [**PlanInput**](PlanInput.md) |  | 

### Return type

[**Plan**](Plan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

