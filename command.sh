##this will create a bucket in s3
##aws s3 mb s3://shubham-code-sam-v10 --region ap-south-1

##aws cloudformation package

##aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM --region ap-south-1


##aws cloudformation package  --s3-bucket shubham-code-sam-v10 --region ap-south-1 --template-file template.yaml --output-template-file gen/template-generated.yaml



##https://github.com/amazon-archives/serverless-app-examples/tree/master/python