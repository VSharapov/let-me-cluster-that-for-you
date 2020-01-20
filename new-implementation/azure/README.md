# Generatnig a service principal

- install azure cli
- `az login`, it'll open a browser or give you a URL+token
- `az ad sp create-for-rbac --name $(whoami)-servicePrincipal`
- put it in a file
