# Grant 'create', 'read' and 'update' permission to paths prefixed by 'secret/data/test/'
path "secret/*" {
  capabilities = ["list"]
}

path "secret/data/*" {
  capabilities = ["read", "list"]
}

# Manage namespaces
path "sys/namespaces/*" {
   capabilities = [ "create", "read", "update", "delete", "list" ]
}
