# SpecsExercisesAPI

All URIs are relative to *https://training-la-api-dev.wly.lol*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExercise**](SpecsExercisesAPI.md#createexercise) | **POST** /v1/specs/exercises | 建立動作
[**deleteExercise**](SpecsExercisesAPI.md#deleteexercise) | **DELETE** /v1/specs/exercises/{id} | 刪除動作
[**getExercise**](SpecsExercisesAPI.md#getexercise) | **GET** /v1/specs/exercises/{id} | 取得單一動作
[**listExercises**](SpecsExercisesAPI.md#listexercises) | **GET** /v1/specs/exercises | 列出動作（可依肌群過濾，依名稱排序）
[**updateExercise**](SpecsExercisesAPI.md#updateexercise) | **PUT** /v1/specs/exercises/{id} | 更新動作（整筆取代 name / muscle_group / equipment / description）


# **createExercise**
```swift
    open class func createExercise(exerciseInput: ExerciseInput, completion: @escaping (_ data: Exercise?, _ error: Error?) -> Void)
```

建立動作

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let exerciseInput = ExerciseInput(id: 123, name: "name_example", muscleGroup: MuscleGroup(), equipment: Equipment(), description: "description_example") // ExerciseInput | 

// 建立動作
SpecsExercisesAPI.createExercise(exerciseInput: exerciseInput) { (response, error) in
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
 **exerciseInput** | [**ExerciseInput**](ExerciseInput.md) |  | 

### Return type

[**Exercise**](Exercise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteExercise**
```swift
    open class func deleteExercise(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

刪除動作

動作被任何 plan / workout 引用時無法刪除（409，code=in_use）；需先解除引用。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 刪除動作
SpecsExercisesAPI.deleteExercise(id: id) { (response, error) in
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

# **getExercise**
```swift
    open class func getExercise(id: UUID, completion: @escaping (_ data: Exercise?, _ error: Error?) -> Void)
```

取得單一動作

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 

// 取得單一動作
SpecsExercisesAPI.getExercise(id: id) { (response, error) in
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

[**Exercise**](Exercise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listExercises**
```swift
    open class func listExercises(muscleGroup: MuscleGroup? = nil, completion: @escaping (_ data: [Exercise]?, _ error: Error?) -> Void)
```

列出動作（可依肌群過濾，依名稱排序）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let muscleGroup = MuscleGroup() // MuscleGroup |  (optional)

// 列出動作（可依肌群過濾，依名稱排序）
SpecsExercisesAPI.listExercises(muscleGroup: muscleGroup) { (response, error) in
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
 **muscleGroup** | [**MuscleGroup**](.md) |  | [optional] 

### Return type

[**[Exercise]**](Exercise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateExercise**
```swift
    open class func updateExercise(id: UUID, exerciseInput: ExerciseInput, completion: @escaping (_ data: Exercise?, _ error: Error?) -> Void)
```

更新動作（整筆取代 name / muscle_group / equipment / description）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let id = 987 // UUID | 
let exerciseInput = ExerciseInput(id: 123, name: "name_example", muscleGroup: MuscleGroup(), equipment: Equipment(), description: "description_example") // ExerciseInput | 

// 更新動作（整筆取代 name / muscle_group / equipment / description）
SpecsExercisesAPI.updateExercise(id: id, exerciseInput: exerciseInput) { (response, error) in
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
 **exerciseInput** | [**ExerciseInput**](ExerciseInput.md) |  | 

### Return type

[**Exercise**](Exercise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

