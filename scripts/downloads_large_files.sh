#!/bin/bash

# Variables
S3_BUCKET="test-bucket-hp-run-jump"
S3_KEY="test-bucket-hp-run-jump/nodejs-pipeline/*"
DESTINATION="/usr/src/app/large-file.zip"

# Download the file from S3
aws s3 cp s3://$S3_BUCKET/$S3_KEY $DESTINATION

# Unzip or process the file if necessary
unzip $DESTINATION -d /usr/src/app/
