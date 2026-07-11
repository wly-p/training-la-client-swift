# SpecsPlansAPI

All URIs are relative to *https://training-la-api-dev.wly.lol*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlanTemplate**](SpecsPlansAPI.md#createplantemplate) | **POST** /v1/specs/plans | 建立菜單範本（aggregate：plan + workouts + sets 整包）
[**deletePlanTemplate**](SpecsPlansAPI.md#deleteplantemplate) | **DELETE** /v1/specs/plans/{id} | 刪除範本（級聯刪除其 workouts / sets）
[**getPlanTemplate**](SpecsPlansAPI.md#getplantemplate) | **GET** /v1/specs/plans/{id} | 取得完整範本（含 workouts / sets）
[**listPlanTemplates**](SpecsPlansAPI.md#listplantemplates) | **GET** /v1/specs/plans | 列出菜單範本（僅 header，不含 workouts）
[**replacePlanTemplate**](SpecsPlansAPI.md#replaceplantemplate) | **PUT** /v1/specs/plans/{id} | 整包取代範本（header 更新；workouts / sets 全數重建）


# **createPlanTemplate**
```swift
    open class func createPlanTemplate(specsPlanInput: SpecsPlanInput, completion: @escaping (_ data: SpecsPlan?, _ error: Error?) -> Void)
```

建立菜單範本（aggregate：plan + workouts + sets 整包）

workouts 的 order_index 由陣列順序決定；sets 的 exercise_index / set_index 由客戶端指派（0-based，不可重複）。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let specsPlanInput = SpecsPlanInput(id: 123, name: "name_example", description: "description_example", workouts: [SpecsPlanWorkoutInput(id: 123, name: "name_example", sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)])]) // SpecsPlanInput | 

// 建立菜單範本（aggregate：plan + workouts + sets 整包）
SpecsPlansAPI.createPlanTemplate(specsPlanInput: specsPlanInput) { (response, error) in
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
 **specsPlanInput** | [**SpecsPlanInput**](SpecsPlanInput.md) |  | 

### Return type

[**SpecsPlan**](SpecsPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlanTemplate**
```swift
    open class func deletePlanTemplate(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

刪除範本（級聯刪除其 workouts / sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 刪除範本（級聯刪除其 workouts / sets）
SpecsPlansAPI.deletePlanTemplate(id: id) { (response, error) in
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

# **getPlanTemplate**
```swift
    open class func getPlanTemplate(id: UUID, completion: @escaping (_ data: SpecsPlan?, _ error: Error?) -> Void)
```

取得完整範本（含 workouts / sets）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 取得完整範本（含 workouts / sets）
SpecsPlansAPI.getPlanTemplate(id: id) { (response, error) in
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

[**SpecsPlan**](SpecsPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlanTemplates**
```swift
    open class func listPlanTemplates(completion: @escaping (_ data: [SpecsPlanSummary]?, _ error: Error?) -> Void)
```

列出菜單範本（僅 header，不含 workouts）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient


// 列出菜單範本（僅 header，不含 workouts）
SpecsPlansAPI.listPlanTemplates() { (response, error) in
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

[**[SpecsPlanSummary]**](SpecsPlanSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replacePlanTemplate**
```swift
    open class func replacePlanTemplate(id: UUID, specsPlanInput: SpecsPlanInput, completion: @escaping (_ data: SpecsPlan?, _ error: Error?) -> Void)
```

整包取代範本（header 更新；workouts / sets 全數重建）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 
let specsPlanInput = SpecsPlanInput(id: 123, name: "name_example", description: "description_example", workouts: [SpecsPlanWorkoutInput(id: 123, name: "name_example", sets: [TargetSetInput(id: 123, exerciseId: 123, exerciseIndex: 123, setIndex: 123, targetWeight: Weight(value: 123, unit: "unit_example"), targetReps: 123, restSec: 123)])]) // SpecsPlanInput | 

// 整包取代範本（header 更新；workouts / sets 全數重建）
SpecsPlansAPI.replacePlanTemplate(id: id, specsPlanInput: specsPlanInput) { (response, error) in
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
 **specsPlanInput** | [**SpecsPlanInput**](SpecsPlanInput.md) |  | 

### Return type

[**SpecsPlan**](SpecsPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

