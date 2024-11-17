locals {
  bucket_chunk = "${var.loki_bucket_name}-chunk"
  bucket_ruler = "${var.loki_bucket_name}-ruler"

  values_loki = templatefile("${path.module}/values/values-loki.yaml.tpl", {
    region       = var.region
    bucket_chunk = local.bucket_chunk
    bucket_ruler = local.bucket_ruler
    role_arn     = aws_iam_role.loki_s3_role.arn
    sa_loki_name = var.sa_loki_name
  })

  values_grafana = templatefile("${path.module}/values/values-grafana.yaml.tpl", {
    adminPassword       = aws_ssm_parameter.password_grafana.value
  })

}