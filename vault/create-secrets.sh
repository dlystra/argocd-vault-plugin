#!/bin/bash

oc exec -it vault-0 -n vault -- vault kv put secret/demo helm="thisisthehelmsecret"
oc exec -it vault-0 -n vault -- vault kv put secret/demo values="thisisthevaluessecret"
oc exec -it vault-0 -n vault -- vault kv put secret/demo kustomize="thisisthekustomizesecret"
oc exec -it vault-0 -n vault -- vault kv put secret/demo patch="thisisthepatchsecret"