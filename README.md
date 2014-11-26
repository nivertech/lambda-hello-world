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

I getting following error, indicating than npm module `eyes` is not resolved:

```
Logs
----
START RequestId: 856e823f-75c0-11e4-a4ba-f5555f89c915
Unable to import module 'index': Error: Cannot find module 'eyes'
 at Function.Module._resolveFilename (module.js:338:15)
 at Function.Module._load (module.js:280:25)
 at Module.require (module.js:364:17)
 at require (module.js:380:17)
 at Object.<anonymous> (/var/task/index.js:4:8)
 at Module._compile (module.js:456:26)
 at Object.Module._extensions..js (module.js:474:10)
 at Module.load (module.js:356:32)
 at Function.Module._load (module.js:312:12)
 at Module.require (module.js:364:17)
END RequestId: 856e823f-75c0-11e4-a4ba-f5555f89c915
REPORT RequestId: 856e823f-75c0-11e4-a4ba-f5555f89c915	Duration: 176.37 ms	Billed Duration: 200 ms 	Memory Size: 128 MB	Max Memory Used: 9 MB	

Message
-------
Unable to import module 'index':Error: Cannot find module 'eyes': at Function.Module._resolveFilename (module.js:338:15)
 at Function.Module._load (module.js:280:25)
 at Module.require (module.js:364:17)
 at require (module.js:380:17)
 at Object.<anonymous> (/var/task/index.js:4:8)
 at Module._compile (module.js:456:26)
 at Object.Module._extensions..js (module.js:474:10)
 at Module.load (module.js:356:32)
 at Function.Module._load (module.js:312:12)
 at Module.require (module.js:364:17)
```
