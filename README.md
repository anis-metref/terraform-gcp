# Principales réalisations avec Terraform sur Google Cloud

Ce dépôt contient la configuration Terraform pour déployer sur GCP :
1. Définition du provider Google  
2. Création d’un réseau VPC et de sous-réseaux  
3. Règles de pare-feu ICMP & SSH  
4. Instances Compute Engine avec provisionnement à distance  
5. Variables centralisées  

## Prérequis

- Terraform >= 0.13  
- Un projet GCP   
- Une clé de service JSON stockée dans `./.key/terraform-user.json`  

## Utilisation


![terraform](./capture/Terrafrom.png)


```bash
terraform init
terraform plan
terraform apply
---
