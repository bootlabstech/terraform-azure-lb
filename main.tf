resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  resource_group_name = var.resource_name
  location            = var.location
  ip_version          = var.ip_version
  sku                 = var.public_ip_sku
  sku_tier            = var.public_ip_sku_tier
  allocation_method   = var.allocation_method
}

resource "azurerm_lb" "loadbalancer" {

  name                = var.name
  resource_group_name = var.resource_name
  location            = var.location
  sku                 = var.sku
  sku_tier            = var.sku_tier
  frontend_ip_configuration {
    name                 = var.ip_name
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }

}

resource "azurerm_lb_backend_address_pool" "backend_address_pool" {
  name            = var.backend_name
  loadbalancer_id = azurerm_lb.loadbalancer.id
}

resource "azurerm_lb_rule" "lb_rule" {
  name                           = var.rule_name
  loadbalancer_id                = azurerm_lb.loadbalancer.id
  frontend_ip_configuration_name = var.ip_name
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.backend_address_pool.id]
  protocol                       = var.protocol
  frontend_port                  = var.frontend_port
  backend_port                   = var.backend_port
  idle_timeout_in_minutes        = var.idle_timeout_in_minutes
  enable_tcp_reset               = var.enable_tcp_reset
  enable_floating_ip             = var.enable_floating_ip

}