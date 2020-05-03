sudo docker build -t naveenkumarana/spring-demo -f docker/Dockerfile .
sudo docker push naveenkumarana/spring-demo
sudo docker run --detach -p 9090:8080 naveenkumarana/spring-demo