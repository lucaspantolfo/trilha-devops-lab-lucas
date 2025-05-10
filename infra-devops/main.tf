# main.tf

# Criação da VPC

resource "aws_vpc" "main" {

  cidr_block = var.vpc_cidr_block #10.0.0.0/16

  enable_dns_support = true

  enable_dns_hostnames = true

  tags = merge(var.common_tags, {

    Name = "trilha-devops-vpc"

  })

}

# Criação do S3 Bucket

# Nota: Nomes de bucket S3 são globalmente únicos.

# Usaremos um nome aleatório para evitar conflitos.

resource "random_id" "bucket_id" {

  byte_length = 8

}

resource "aws_s3_bucket" "lab_bucket" {

  # Nome do bucket: prefixo de