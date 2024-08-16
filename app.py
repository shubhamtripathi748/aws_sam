import json
import boto3
import os
region_NAME='ap-south-1'
table_name = os.environ['TABLE_NAME']
dynamo = boto3.client('dynamodb',region_name=region_NAME)

def respond(err, res=None):
    return {
        'statusCode': '400' if err else '200',
        'body': err.message if err else json.dumps(res),
        'headers': {
            'Content-Type': 'application/json',
        },
    }


def lambda_handler(event, context):
    
    return respond(None,res=dynamo.scan(TableName=table_name))  # Echo back the first key value
    