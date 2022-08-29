# Preparando a minha landingzone na AWS

Então, você vai começar a trabalhar na Startup AgoraVai, eles estão desenvolvendo código localmente nas máquinas dos desenvolvedores e agora querem colocar o código em produção na AWS!

Eles estão em um estágio onde o MVP (Minimum Viable Program) será apresentado para alguns investidores, por tanto devemos propor uma base sólida e depois um ambiente funcional para colocar a aplicação, porém ainda piloto.

Precisamos estruturar o nosso ambiente AWS, vamos criar usando [Terraform](https://www.terraform.io/):

1. Uma [VPC](https://aws.amazon.com/pt/vpc/) usando um [endereçamento de rede privada](https://www.rfc-editor.org/rfc/rfc1918)
1.1. Dentro da VPC, você deve criar 2 subnets privadas (com acesso a intenet) e 2 subnets publicas, [referencia](https://docs.aws.amazon.com/pt_br/vpc/latest/userguide/VPC_Scenario2.html)
2. Um [security group](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/ec2-security-groups.html) que permita acesso de entrarda (inbound) de qualquer lugar do mundo nas portas 80 e 443 e acesso de saida para qualquer lugar do mundo (sem restricões). Também permitir acesso na porta 22 para o mesmo range de ip usado na VPC.
3. Uma [máquina virtual](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/concepts.html) onde rodará a nossa aplicação de teste, ela deve ser do tamanho t4g.micro
4. Também precisaremos de um [S3 bucket](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/userguide/Welcome.html), privado
5. Use as seguintes tags em todos os recursos:

```
Aluno = <meu-nome>
Gb    = desenvolve
```

Para completar a tarefa, o comando ```terraform plan``` tem que rodar certinho, não vamos conseguir criar realmente os recursos pois não teremos acesso.


## Terraform

[Get Started - AWS](https://learn.hashicorp.com/collections/terraform/aws-get-started)

[Use the Command Line Interface](https://learn.hashicorp.com/collections/terraform/cli)


### AWS Providers, Recursos e Modulos

[AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/4.28.0)

[AWS VPC Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)

[AWS VPC Module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/3.14.2)


## Dicas

1. [Instale o aws cli v2](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html)
2. [Download do terraform](https://www.terraform.io/downloads)
3. Peça as credenciais de acesso


