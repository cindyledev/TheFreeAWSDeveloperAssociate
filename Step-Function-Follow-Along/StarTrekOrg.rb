# Step Function for StarTrekOrg
# Completed at 5:29 in Follow-Along
{
  "Comment": "Star Trek Actor Organizer",
  "Version": "1.0",
  "StartAt": "RecognizeState",
  "States": {
    "RecognizeState": {
      "Type": "Pass",
      "Next": "WaitState"
    },
    "WaitState": {
      "Type": "Wait",
      "Seconds": 10,
      "Next": "RecordState"
    },
    "RecordState": {
      "Type": "Pass",
      "Next": "SuccessState"
    },
    "SuccessState": {
      "Type": "Succeed"
    }
  }
}