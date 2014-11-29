lambda-hello-world
==================

AWS Lambda with npm module sample


Added npm module eyes dependency to `package.json`:

``` json
  ...
  "dependencies": {
    "eyes": "^0.1.8"
  }
  ...
```

Replace lambda execution role in the script `upload.sh`:

```
lambda_execution_role_arn="arn:aws:iam::************:role/lambda_exec_role"
```

Prepare and upload function to the AWS Lambda service with:

``` bash
./upload.sh
```

Invoke lambda function with:

``` bash
aws lambda invoke-async --function-name "lambda-hello-world" --invoke-args event-custom.json
```
