# Gerenciando Aplicações com Kubernetes

Este repositório contém os arquivos e instruções para o exercício de gerenciamento de aplicações Nginx usando Kubernetes e Minikube.

## Pré-requisitos

- [Docker Desktop](https://docs.docker.com/desktop/setup/install/windows-install/)
- [kubectl](https://kubernetes.io/pt-br/docs/tasks/tools/)
- [Minikube](https://minikube.sigs.k8s.io/docs/start)
- Git

## Instruções de Uso

### 1. Verificar o Status do Cluster

```bash
kubectl cluster-info
```

### 2. Implantar a Aplicação

```bash
# Aplicar o arquivo de deployment
kubectl apply -f nginx-deployment.yaml

# Verificar o status da implantação
kubectl get deployments

# Verificar o status dos pods
kubectl get pods

# Aplicar o arquivo de serviço
kubectl apply -f nginx-service.yaml

# Verificar o status do serviço
kubectl get services
```

### 3. Acessar a Aplicação

```bash
# Obter a URL para acessar a aplicação
minikube service nginx-service --url
```

### 4. Escalar a Aplicação

```bash
# Editar o arquivo nginx-deployment.yaml e alterar replicas: 2 para replicas: 5
# Aplicar as mudanças
kubectl apply -f nginx-deployment.yaml

# Verificar o status dos pods
kubectl get pods
```

### 5. Reduzir a Aplicação

```bash
# Editar o arquivo nginx-deployment.yaml e alterar replicas: 5 para replicas: 1
# Aplicar as mudanças
kubectl apply -f nginx-deployment.yaml

# Verificar o status dos pods
kubectl get pods
```

### 6. Explorar os Logs

```bash
# Visualizar os logs de um pod
kubectl logs <nome-do-pod>
```

### 7. Limpar o Ambiente

```bash
# Deletar o serviço e a implantação
kubectl delete -f nginx-service.yaml
kubectl delete -f nginx-deployment.yaml

# Verificar se os pods e serviços foram removidos
kubectl get deployments
kubectl get services
```

## Imagens

### Página do Nginx
![Página do Nginx](imagens/nginx-page.png)

### Pods em Execução (5 réplicas)
![Pods em Execução](imagens/pods-running.png)