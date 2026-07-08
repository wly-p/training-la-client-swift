# PlanWorkout

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**userId** | **UUID** |  | 
**planId** | **UUID** | null＝單獨排課（不屬任何菜單） | 
**name** | **String** |  | 
**orderIndex** | **Int** |  | 
**status** | [**PlanWorkoutStatus**](PlanWorkoutStatus.md) |  | 
**date** | **String** | null＝循環（依 order_index 輪替）；有值＝指定日 | 
**fromSpecsPlanWorkoutId** | **UUID** | 範本來源（複製建立時記錄） | 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**sets** | [TargetSet] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


