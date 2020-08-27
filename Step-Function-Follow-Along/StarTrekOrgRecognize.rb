# Lambda Function for StarTrekOrgRecognize
# Completed at 21:40 in Follow-Along

require 'json'
require "aws-sdk-rekognition"

def lambda_handler(event:, context:)
    client = Aws::Rekognition::Client.new
    resp = client.recognize_celebrities({
        image: {
            s3_object: {
                bucket: "star-trek-cindy-org",
                name: "logo.png"
            }
        }
    }) # recognize_celebrities
    puts resp.celebrity_faces
    return {}
end
