docker build -t aquintero446/nginx:latest -t aquintero446/nginx:$SHA -f ./client/Dockerfile ./client
docker build -t aquintero446/api:latest -t aquintero446/api:$SHA -f ./server/Dockerfile ./server

docker push aquintero446/nginx:latest
docker push aquintero446/api:latest

docker push aquintero446/nginx:$SHA
docker push aquintero446/api:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=aquintero446/api:$SHA
kubectl set image deployments/client-deployment client=aquintero446/nginx:$SHA