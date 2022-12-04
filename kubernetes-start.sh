#! /usr/bin/bash

set -x
set -e



sudo sh kops-binary.sh
sudo sh kubectl-binary.sh

#aws configure
#export AWS_ACCESS_KEY_ID=AKIAVSSHIJ2IXEEVG7N7

#export AWS_SECRET_ACCESS_KEY=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

#export NAME=raman.k8s.local

#export KOPS_STATE_STORE=s3://ramm-bucket
#ssh-keygen

#kops create cluster --zones ap-south-1a ${NAME}
