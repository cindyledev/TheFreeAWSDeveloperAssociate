#!/usr/bin/env bash

aws s3 cp template.yaml s3://study-sync-cindy/template.yaml

aws cloudformation update-stack \
--region us-east-1 \
--stack-name StudySync \
--template-url https://study-sync-cindy.s3.amazonaws.com/template.yaml \
--parameters \
ParameterKey=VpcId,ParameterValue=vpc-8d8b6df0