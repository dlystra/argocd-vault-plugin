# argocd-vault-plugin

1. Install OpenShift-GitOps operator:
```
oc apply -f openshift-gitops-operator/install.yaml
```

2. Deploy Argo CD cluster and dependencies:
```
oc apply -f argocd
```

3. Create the Vault application and secrets:
```
oc apply -f vault/1-vault-helm.yaml

oc apply -f 2-route.yaml

/vault/create-secrets.sh
```

4. Test the AVP plugin:
```
oc apply -f test-apps/avp-app-helm.yaml test-apps/avp-app-kustomize.yaml
```
