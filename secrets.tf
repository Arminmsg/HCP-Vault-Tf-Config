# Enable kv-v2 secrets engine in the 'admin/infrastructure' namespace at 'secret' path
resource "vault_mount" "secret" {  
    depends_on = [vault_namespace.infrastructure]  
    provider = vault.infrastructure  
    path = "secret"  
    type = "kv-v2"
}