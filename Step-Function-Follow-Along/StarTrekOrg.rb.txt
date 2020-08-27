# Step Function for StarTrekOrg
# Complete at 4:38 in Follow-Along
{
  "Comment": "Star Trek Actor Organizer",
  "Version": "1.0",
  "StartAt": "RecognizeState",
  "States": {
    "RecognizeState": {
      "Type": "Pass",
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