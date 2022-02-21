#------------------------------------------------------------
# Enable userpass auth method in the 'admin/infrastructure' namespace
#------------------------------------------------------------
resource "vault_auth_backend" "userpass" {
  depends_on = [vault_namespace.infrastructure]
  provider = vault.infrastructure
  type = "userpass"
}

#-----------------------------------------------------------
# Create a user named 'student' with password, 'changeme'
#-----------------------------------------------------------
resource "vault_generic_endpoint" "student" {
  depends_on = [vault_auth_backend.userpass]
  provider = vault.infrastructure
  path = "auth/userpass/users/student"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["tester"],
  "password": "changeme"
}
EOT
}
