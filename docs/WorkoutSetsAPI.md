# WorkoutSetsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listWorkoutSetsByExercise**](WorkoutSetsAPI.md#listworkoutsetsbyexercise) | **GET** /v1/workout-sets | 某動作的歷史組數（date 新到舊）


# **listWorkoutSetsByExercise**
```swift
    open class func listWorkoutSetsByExercise(exerciseId: UUID, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: [WorkoutSetHistoryItem]?, _ error: Error?) -> Void)
```

某動作的歷史組數（date 新到舊）

讀取可細的查詢端點：workout_sets WHERE exercise_id（單表索引查詢，附所屬 workout 日期）。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient

let exerciseId = 987 // UUID | 
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)

// 某動作的歷史組數（date 新到舊）
WorkoutSetsAPI.listWorkoutSetsByExercise(exerciseId: exerciseId, limit: limit, offset: offset) { (response, error) in
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
 **exerciseId** | **UUID** |  | 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**[WorkoutSetHistoryItem]**](WorkoutSetHistoryItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

