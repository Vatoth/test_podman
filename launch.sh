

sudo podman build --tag myhttp -f ./Dockerfile.http # Create image for http app
sudo podman build --tag myproxy -f ./Dockerfile.nginx # Create image for http proxy
sudo podman pod create -p 8080:80 --name mypod # Create pod and open on port 8080
sudo podman run -d --pod mypod myhttp # Run container in pod
sudo podman run -d --pod mypod myproxy # Run container in pod

