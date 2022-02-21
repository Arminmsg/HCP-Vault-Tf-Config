provider "vault" {  
    alias = "admin"  
    namespace = "admin"
}

#--------------------------------------
# Create 'admin/infrastructure' namespace
#--------------------------------------

resource "vault_namespace" "infrastructure" {  
    provider = vault.admin  
    path = "infrastructure"
}

provider "vault" {  
    alias = "infrastructure"  
    namespace = "admin/infrastructure"
}