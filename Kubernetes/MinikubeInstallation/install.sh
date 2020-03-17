curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client=true
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.2.0/minikube-linux-amd64 && chmod +x minikube && sudo cp minikube /usr/local/bin/ && rm minikube
sudo minikube version
sudo minikube start --vm-driver=none
git clone https://github.com/AnjuMeleth/DockerKickStarter.git
cd DockerKickStarter/Installation
sh install.sh
sudo minikube start --vm-driver=none
minikube version

