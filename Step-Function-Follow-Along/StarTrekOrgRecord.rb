# Lambda Function for StarTrekOrgRecognize
# Completed at 42:17 in Follow-Along

require 'json'
require "aws-sdk-dynamodb"

def lambda_handler(event:, context:)
    puts event
    client = Aws::DynamoDB::Client.new
    items = event['celebrities'].map do |celeb|
        {
            put_request: {
                item: {
                    "Id" => celeb['id'].to_s,
                    "Name" => celeb['name']
                }
            }
        }
    end
    puts items
    resp = client.batch_write_item({
        request_items: {
            "StarTrekOrg" => items
        }
    })
    puts resp
    return {}
end
