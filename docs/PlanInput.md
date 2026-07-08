# PlanInput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | 可選；客戶端可自帶 UUID。僅建立時有效，更新時忽略。 | [optional] 
**name** | **String** | 一般建立必填；from_specs_plan_id 複製模式未帶時沿用範本名 | [optional] 
**description** | **String** |  | [optional] 
**status** | [**PlanStatus**](PlanStatus.md) | 未帶預設 active | [optional] 
**fromSpecsPlanId** | **UUID** | 僅建立時有效：整套複製範本（此時 workouts 必須為空） | [optional] 
**workouts** | [PlanWorkoutInput] | order_index 由陣列順序決定 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


