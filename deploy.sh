#!/bin/bash

IMAGE=$1

gcloud run deploy \
  meanstream-docs \
  --region europe-west1 \
  --image $1
