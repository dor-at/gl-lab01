# gl-lab01
Infrastructure configuration for a cloud-native gitlab instance
## Prerequisites
- Secrets Manager secrets of type 'secret-string'
  - RDS master user password
  - Redis auth token

Specify the key names and arns in the following sections
## How to use
**Clone the repo**
```bash
git clone https://github.com/dor-at/gl-lab01.git
```
**Package CloudFormation template**
```bash
aws cloudformation package --template-file main.yaml --s3-bucket <bucket-name> --output-template-file packaged-template.yaml
```
**Deploy CloudFormation stack**
```bash
aws cloudformation create-stack --stack-name gl-lab01 --template-body file://packaged-template.yaml --parameters ParamaterKey=AuthTokenSecretField,ParameterValue=<key-name> ParameterKey=AuthTokenSecretId,ParameterValue=<secret-arn> ParameterKey=BucketsUsername,ParameterValue=<username> ParameterKey=RdsSecretField,ParameterValue=<key-name> ParameterKey=RdsSecretId,ParameterValue=<secret-arn> ParameterKey=VpcId,ParameterValue=<default-vpc> ParameterKey=VpcSubnet,ParameterValue=<subnet-id> --capabilites CAPABILITY_IAM
```
