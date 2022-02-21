resource "vault_policy" "tester_policy" {  
    provider = vault.infrastructure  
    depends_on = [vault_namespace.infrastructure]  
    name   = "tester"  
    policy = file("policies/tester.hcl")
}