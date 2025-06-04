## Instale o Docker Desktop.
https://docs.docker.com/desktop/setup/install/windows-install/
> [!NOTE]
> ATENÇÃO: Abra a janela do Docker Desktop e mantenha aberta para inicializar o motor de execução Docker.

## Instale o Kubectl na sua máquina host. 
https://kubernetes.io/pt-br/docs/tasks/tools/
> [!NOTE]
> Acesse o link acima e veja o procedimento de instalação de acordo com seu sistema operacional host.

## Valide a instalação checando a versão com o comando:
```shell
kubectl version --client
```
> [!NOTE]
> Enquanto não visualizar a versão do kubectl não adianta seguir em frente. Primeiro instale o kubectl na máquina host.

## Instale o minikube
https://minikube.sigs.k8s.io/docs/start

## Verifica a versão do Minikube instalada
```shell
minikube version
```
> [!NOTE]
> Enquanto não visualizar a versão do Minikube não adianta seguir em frente. Primeiro instale o Minikube na máquina host.

## Inicia o cluster Kubernetes local com Minikube
```shell
minikube start
```
## Exibe informações sobre o cluster Kubernetes atual
```shell
kubectl cluster-info
```
