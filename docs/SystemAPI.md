# SystemAPI

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealth**](SystemAPI.md#gethealth) | **GET** /healthz | 健康檢查（含 DB 連線）


# **getHealth**
```swift
    open class func getHealth(completion: @escaping (_ data: GetHealth200Response?, _ error: Error?) -> Void)
```

健康檢查（含 DB 連線）

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TrainingLaClient


// 健康檢查（含 DB 連線）
SystemAPI.getHealth() { (response, error) in
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

[**GetHealth200Response**](GetHealth200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

