# Rodando uma aplicação no kubernetes

Lembra aquele container docker que criamos no [day-1](rkferreira/gb-desenvolve/tree/main/day-1/task-1) ?

Queremos rodar ele no kubernetes agora!

Faça o deploy dessa aplicação no seu minikube na sua máquina, você pode fazer o deploy escrevendo os yamls ou helm.

Suba os arquivos usados para criar a aplicação no seu repositório do github correspondente a essa atividade.


## Help!

[k8s cheat sheet](https://kubernetes.io/pt-br/docs/reference/kubectl/cheatsheet/)

[Rodando aplicações stateless usando um Deployment](https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/)

Sugiro criar uma conta no DockerHub (é free) e colocar a imagem docker da sua aplicação lá, assim fica mais fácil. Pode deixar publica a imagem.

[DockerHub](https://hub.docker.com/)


### Avançado

Você pode gerar um esqueleto básico de uma aplicação usando o helm, ou mesmo fazer o deploy usando o helm.
[Helm](https://helm.sh/pt/docs/intro/install/)

```
root: rodrigoke$ helm create aluno
Creating aluno

root:tmp rodrigoke$ ls -1 aluno/templates/
NOTES.txt
_helpers.tpl
deployment.yaml
hpa.yaml
ingress.yaml
service.yaml
serviceaccount.yaml
tests

```

Caso queira avançar mais no exercicio, e deixar mais realistico, pode criar um ingress e expor a sua aplicação para ser acessivel no seu browser.

[nginx controller no minkube](https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/)

