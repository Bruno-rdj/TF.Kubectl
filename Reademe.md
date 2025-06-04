# Deploy e Orquestração de Aplicação com Docker e Kubernetes

# Instale o Docker Desktop.
https://docs.docker.com/desktop/setup/install/windows-install/
> [!NOTE]
> ATENÇÃO: Abra a janela do Docker Desktop e mantenha aberta para inicializar o motor de execução Docker.

# ATENÇÃO: Abra a janela do Docker Desktop e mantenha aberta para inicializar o motor de execução Docker.

# Instale o Kubectl na sua máquina host. 
https://kubernetes.io/pt-br/docs/tasks/tools/
> [!NOTE]
> Acesse o link acima e veja o procedimento de instalação de acordo com seu sistema operacional host.

# Valide a instalação checando a versão com o comando:
```shell
kubectl version --client
```
> [!NOTE]
> Enquanto não visualizar a versão do kubectl não adianta seguir em frente. Primeiro instale o kubectl na máquina host.

# Instale o minikube
https://minikube.sigs.k8s.io/docs/start

# Verifica a versão do Minikube instalada
```shell
minikube version
```
> [!NOTE]
> Enquanto não visualizar a versão do Minikube não adianta seguir em frente. Primeiro instale o Minikube na máquina host.

# Inicia o cluster Kubernetes local com Minikube
```shell
minikube start
```

# Exibe informações sobre o cluster Kubernetes atual
```shell
kubectl cluster-info
```

# Cria a imagem Docker local da aplicação Streamlit
```shell
docker build -t app-compare:v1 .
```
# Carrega a imagem Docker local diretamente no ambiente Minikube
```shell
minikube image load app-compare:v1
```
# Aplica o manifesto YAML para criar o deployment Kubernetes
```shell
kubectl apply -f k8s/deployment.yaml 
```
# Aplica o manifesto YAML para criar o serviço Kubernetes
```shell
kubectl apply -f k8s/service.yaml 
```
# Lista os pods existentes no Kubernetes e seus status
```shell
kubectl get pods
```
# Lista os serviços ativos e mostra seus detalhes (porta, IP)
```shell
kubectl get services
```
# Abre automaticamente o serviço da aplicação no navegador usando Minikube
```shell
minikube service app-compare-service
```
# Escala o deployment para rodar com 4 réplicas (pods) simultaneamente
```shell
kubectl scale deployment app-compare-deployment --replicas=4
```
# Exibe o status atual dos pods após escalar a aplicação
```shell
kubectl get pods
```

# Deleta manualmente um pod específico para testar recuperação automática (pegue o nome do container a partir do comando anterior)
```shell
kubectl delete pod app-compare-deployment-7d75cd987d-wtlcv
```

# Lista novamente os pods; o Kubernetes recriará automaticamente o pod deletado
```shell
kubectl get pods  
```

# Exibe informações detalhadas sobre um pod específico
```shell
kubectl describe pod app-compare-deployment-7d75cd987d-729tr
```

# Abre um terminal interativo (bash) dentro de um pod específico
```shell
kubectl exec -it ai-streamlit-deployment-7d75cd987d-729tr -- bash
```

# Desligando o cluster Kubernetes
```shell
minikube stop
```

# Deletando o cluster
```shell
minikube delete
```


