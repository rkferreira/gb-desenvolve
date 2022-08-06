# Preparando o terreno, kubernetes deploy

Fala pessoal! Tudo certo?

Nessa tarefa vamos brincar com [Kubernetes](https://kubernetes.io/pt-br/).

Precisamos instalar alguma versão do kubernetes no seu computador para realizar as atividades.

Eu sugiro usar o [minikube](https://minikube.sigs.k8s.io/docs/start/) ou o [kind](https://kind.sigs.k8s.io/).

Então, instale no seu computador e veja se está funcionando.

Caso precise de mais informações além dos links que coloquei acima para conseguir fazer a instalação, recomendo procurar no google videos/textos sobre como instalar esse software no seu computador. 

Não saber como fazer e procurar as informações também faz parte :)


## Links de apoio

[k8s cheat sheet](https://kubernetes.io/pt-br/docs/reference/kubectl/cheatsheet/)

[k8s documentação oficial](https://kubernetes.io/pt-br/docs/home/)


### Minikube

Se estiver funcionando, algo similar deve funcionar:

```
root:~ rodrigoke$ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured


root:~ rodrigoke$ kubectl config use-context minikube
Switched to context "minikube".


root:~ rodrigoke$ kubectl config current-context
minikube


root:~ rodrigoke$ kubectl get pods --all-namespaces
NAMESPACE     NAME                                       READY   STATUS      RESTARTS   AGE
kube-system   coredns-558bd4d5db-bdgvm                   1/1     Running     2          110d
kube-system   etcd-minikube                              1/1     Running     9          161d
kube-system   kube-apiserver-minikube                    1/1     Running     10         161d
kube-system   kube-controller-manager-minikube           1/1     Running     11         161d
kube-system   kube-proxy-2trzq                           1/1     Running     9          161d
kube-system   kube-scheduler-minikube                    1/1     Running     9          161d
kube-system   storage-provisioner                        1/1     Running     35         161d

```




## Off topic

Uma boa linguagem/syntaxe para escrita de documentos técnicos e/ou documentação versionada no git é o Markdown.

[markdown cheat sheet](https://www.markdownguide.org/cheat-sheet/)


