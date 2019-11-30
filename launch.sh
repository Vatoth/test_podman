sudo podman build --tag myhttp -f ./Dockerfile
sudo podman build --tag myproxy -f ./Dockerfile.nginx
sudo podman pod create -p 8080:80 --name mypod
sudo podman run -d --pod mypod myhttp
sudo podman run -d --pod  mypod myproxy