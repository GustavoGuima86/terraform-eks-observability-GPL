## WIP
# Observability EKS opensource S3 backend

Using the stack, Grafana, Prometheus and Loki

Backend using S3

implementing in progress



## Deploy using

```terraform plan -var-file="test.tfvars"```

```terraform apply -var-file="test.tfvars"```

## Lint

`terraform fmt -recursive ../../ `

## Destroy using

```terraform destroy -var-file="test.tfvars"```


## Update eks config locally

`aws eks --region eu-central-1 update-kubeconfig --name test`


