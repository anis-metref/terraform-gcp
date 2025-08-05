variable "gcp_credentials" {
  type        = string
  description = "Credentials pour GCP"
}

variable "gcp_project_id" {
  type        = string
  description = "ID du projet GCP"
}

variable "gcp_region" {
  type        = string
  description = "Region pour les serveurs GCP"
}

variable "gcp_type" {
  type        = string
  description = "Type de l'instance"
}

variable "image_debian" {
  type        = string
  description = "Image Debian à utiliser"
}

variable "instance1_ip_zabbix" {
  type        = string
  description = "IP publique de l'instance Zabbix"
}

variable "instance2_ip_wordpress" {
  type        = string
  description = "IP publique de l'instance Wordpress"
}

variable "instance3_ip_drupal" {
  type        = string
  description = "IP publique de l'instance Drupal"
}

variable "instance4_ip_bdd" {
  type        = string
  description = "IP publique de l'instance BDD"
}

variable "source_ip_adress" {
  type        = string
  description = "Adresse IP source autorisée pour SSH"
}

