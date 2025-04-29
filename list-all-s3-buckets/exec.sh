#!/bin/bash
for bucket in $(aws s3api list-buckets --query "Buckets[].Name" --output text); do
    COUNT=$(aws s3 ls "s3://$bucket" --recursive | wc -l)
    SIZE=$(aws s3 ls "s3://$bucket" --recursive --summarize | grep "Total Size" | awk '{print $3}')
    echo "Bucket: $bucket | Objects: $COUNT | Size: $SIZE bytes"
done