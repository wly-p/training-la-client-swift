# Workout

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**userId** | **UUID** |  | 
**planWorkoutId** | **UUID** | 照哪個排課做；來源被刪時由 DB 設回 null | 
**date** | **String** |  | 
**startedAt** | **Date** |  | 
**endedAt** | **Date** |  | 
**overallFeeling** | **Int** |  | 
**note** | **String** |  | 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**sets** | [WorkoutSet] | 依 exercise_index, set_index 排序 | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


