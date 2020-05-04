sudo docker build -t naveenkumarana/spring-demo -f docker/Dockerfile .
sudo docker push naveenkumarana/spring-demo
sudo docker run --detach -p 9090:8080 naveenkumarana/spring-demo

## K8 stuff
## Get Node port IP
nodeip=$(kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")].address}' | awk '{print $1}')
port=$(kubectl --namespace springdemo get service springdemoservice -o jsonpath='{.spec.ports[0].nodePort}')
echo "http://${nodeip}:${port}"

