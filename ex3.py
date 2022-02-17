import boto3

def test_s3_bucket_creation():
    s3 = boto3.client('s3')
    response = s3.list_buckets()

    # generate a hash of existing buckets
    buckets = [bucket['Name'] for bucket in response['Buckets']]
    bucket_exists = 'test-altais-ig' in buckets
    assert bucket_exists == True