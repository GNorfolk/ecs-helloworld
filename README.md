# ecs-helloworld
Basic HelloWorld ECS deployment 

- aws cloudformation update-stack --stack-name ecr-repo --template-body file://ecr-repo.yaml --region eu-west-1
- docker tag helloworld:1.0 103348857345.dkr.ecr.eu-west-1.amazonaws.com/ecs-helloworld:1.0
- docker push 103348857345.dkr.ecr.eu-west-1.amazonaws.com/ecs-helloworld