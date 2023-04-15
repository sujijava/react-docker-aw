#~/bin/sh

echo "Pre-build steps:"
echo "authenticating with AWS ECR ... "
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 747578801632.dkr.ecr.us-east-2.amazonaws.com

echo "Build steps"
echo "Build image..."
docker build -t 747578801632.dkr.ecr.us-east-2.amazonaws.com/react-docker-aws:latest . 

echo "post-build steps:"
echo "pushing image to AWS ECR ..."
docker push 747578801632.dkr.ecr.us-east-2.amazonaws.com/react-docker-aws:latest