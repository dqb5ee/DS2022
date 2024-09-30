#!/usr/bin/env python3

bucket_name = 'ds2022-dqb5ee’
gif_url = 'https://d2zp5xs5cp8zlg.cloudfront.net/image-81942-800.jpg'  
gif_name = 'gif.gif'
object_name = 'gif.gif' 
expires_in = 604800 

s3 = boto3.client('s3')

response = requests.get(gif_url)
with open(gif_name, 'wb') as file:
    file.write(response.content)

with open(gif_name, 'rb') as data:
    s3.put_object(
        Body=data,
        Bucket=bucket_name,
        Key=object_name,
        ACL='public-read'  # Make the file public
    )

presigned_url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
)

print(f'Presigned URL: {presigned_url}')
