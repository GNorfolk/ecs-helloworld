# ecs-helloworld
Basic HelloWorld ECS deployment 

## useful commands
- docker login -u AWS -p $(aws ecr get-login-password) 103348857345.dkr.ecr.eu-west-1.amazonaws.com
- aws cloudformation create-stack --stack-name ecs-helloworld --template-body file://cfn/main.yaml --region eu-west-1
- docker tag helloworld:1.0 103348857345.dkr.ecr.eu-west-1.amazonaws.com/ecs-helloworld:1.0
- docker push 103348857345.dkr.ecr.eu-west-1.amazonaws.com/ecs-helloworld