# Lambda Function for StarTrekOrgRecognize
# Completed at 32:06 in Follow-Along

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
