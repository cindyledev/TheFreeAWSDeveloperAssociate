# Lambda Function for StarTrekOrgRecognize
# Completed at 47:36 in Follow-Along

require 'json'
require "aws-sdk-rekognition"

def lambda_handler(event:, context:)
    client = Aws::Rekognition::Client.new
    bucket = event['detail']['requestParameters']['bucketName']
    key = event['detail']['requestParameters']['key']
    resp = client.recognize_celebrities({
        image: {
            s3_object: {
                bucket: bucket,
                name: key
            }
        }
    }) # recognize_celebrities
    results = []
    resp.celebrity_faces.each do |celeb|
        results.push({
            id: celeb.id,
            name: celeb.name
        })
    end
    puts results
    return { celebrities: results }
end
