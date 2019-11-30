

podman build --tag myhttp -f ./Dockerfile.http # Create image for http app
podman build --tag myproxy -f ./Dockerfile.proxy # Create image for http proxy
podman pod create -p 8080:80 --name mypod # Create pod and open on port 8080
podman run -d --pod mypod myhttp # Run container in pod
podman run -d --pod  mypod myproxy # Run container in pod