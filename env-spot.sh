#!/bin/bash

# common
export AWS_REGION="ap-northeast-2"

export CLUSTER_NAME="seoul-dev-spot-eks"

export BASE_DOMAIN="spot.mzdev.be"

# kube-ingress
export CERT_MANAGER_INSTALLED="true"
export CERT_MANAGER_RBAC_ENABLED="true"
export CERT_MANAGER_ISSUER_EMAIL="me@nalbam.com"

export NGINX_INGRESS_INSTALLED="true"
export NGINX_INGRESS_CONTROLLER_KIND="DaemonSet"

# kube-system
export CLUSTER_AUTOSCALER_INSTALLED="true"
export CLUSTER_AUTOSCALER_IAM_ROLE="${CLUSTER_NAME}-autoscaling"

export CLUSTER_OVERPROVISIONER_INSTALLED="true"

export KUBE_STATE_METRICS_INSTALLED="true"

export KUBE2IAM_INSTALLED="true"

export METRICS_SERVER_INSTALLED="true"

# monitor
export PROMETHEUS_INSTALLED="true"

export GRAFANA_INSTALLED="true"
export GRAFANA_HOST="grafana-monitor.${BASE_DOMAIN}"

# argo
export ARGO_INSTALLED="true"
export ARGO_INGRESS_HOST="argo.${BASE_DOMAIN}"
export ARGO_IAM_ROLE="${CLUSTER_NAME}-argo"
export ARGO_BUCKET="${CLUSTER_NAME}-argo"

export ARGO_CD_INSTALLED="true"
export ARGO_CD_INGRESS_HOST="argocd.${BASE_DOMAIN}"
export ARGO_CD_PASSWORD='$2a$10$RihNM/bmql87aKhSa/U0DOmTx5JDPl2byap07bLSNRtsEXFiq87E2'

export ARGO_EVENTS_INSTALLED="true"
