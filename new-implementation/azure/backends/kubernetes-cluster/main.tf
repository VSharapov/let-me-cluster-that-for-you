resource "azurerm_kubernetes_cluster" "main" {
  name                = "${var.prefix}-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.prefix
  kubernetes_version  = var.kubernetes_version

  #linux_profile {
  #  admin_username = var.admin_username

  ## Uncomment to enable SSH access to nodes
  ##
  ## linux_profile {
  ##   admin_username = "acctestuser1"
  ##   ssh_key {
  ##     key_data = "${file(var.public_ssh_key_path)}"
  ##   }
  ## }
  #}

  agent_pool_profile {
    name            = "nodepool"
    count           = var.agents_count
    vm_size         = var.agents_size
    os_type         = "Linux"
    os_disk_size_gb = 50
  }

  service_principal {
    client_id     = var.service_principal_client_id
    client_secret = var.service_principal_client_secret
  }

  addon_profile {
    oms_agent {
      enabled                    = true
      log_analytics_workspace_id = var.log_analytics_workspace_id
    }
  }

  tags = var.tags
}

