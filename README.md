# gl-lab01
Infrastructure configuration for a K1 gitlab cluster (-1000 users)
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
aws cloudformation create-stack --stack-name gl-lab01 --template-body file://packaged-template.yaml --parameters AuthTokenField=<key-name>,AuthTokenSecretId=<secret-arn>,BucketsUsername=<username>,RdsSecretField=<key-name>,RdsSecretId=<secret-arn>,VpcId=<default-vpc>,VpcSubnet<subnet-id>
```
