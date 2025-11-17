#!/bin/bash

oc exec -it vault-0 -n vault -- vault kv put secret/helm demo="thisisthehelmsecret"; \
oc exec -it vault-0 -n vault -- vault kv put secret/values demo="thisisthevaluessecret"; \
oc exec -it vault-0 -n vault -- vault kv put secret/kustomize demo="thisisthekustomizesecret"; \
oc exec -it vault-0 -n vault -- vault kv put secret/patch demo="thisisthepatchsecret"
