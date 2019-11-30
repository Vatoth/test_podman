sudo podman build --tag myhttp -f ./Dockerfile
sudo podman build --tag myproxy -f ./Dockerfile.nginx
sudo podman pod create -p 80:8080  --name mypod
sudo podman run -d --pod mypod myhttp
sudo podman run -d --pod  mypod myproxy