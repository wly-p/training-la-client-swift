# WorkoutSet

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**exerciseId** | **UUID** |  | 
**exerciseIndex** | **Int** |  | 
**setIndex** | **Int** |  | 
**weight** | [**Weight**](Weight.md) |  | 
**reps** | **Int** |  | 
**status** | [**WorkoutSetStatus**](WorkoutSetStatus.md) |  | 
**fromPlanSetId** | **UUID** | null＝臨時加練；來源 plan_set 被刪時由 DB 設回 null | 
**targetWeight** | [**Weight**](Weight.md) | 目標快照（來自對應 plan_set；課表事後被改不影響此紀錄） | 
**targetReps** | **Int** |  | 
**createdAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


