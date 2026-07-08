# PlanWorkoutInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | 可選；客戶端可自帶 UUID。僅建立時有效。 | [optional] 
**name** | **String** |  | [optional] 
**status** | [**PlanWorkoutStatus**](PlanWorkoutStatus.md) | 未帶預設 not_started | [optional] 
**date** | **Date** |  | [optional] 
**fromSpecsPlanWorkoutId** | **UUID** | 僅建立時有效：從範本積木複製（此時 sets 必須為空） | [optional] 
**sets** | [TargetSetInput] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


