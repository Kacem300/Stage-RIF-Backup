# RIF IAM Recovery Repository

This repository contains the configuration files for the OpenStack–Keycloak identity and access management integration, along with WireGuard VPN settings, Terraform provisioning, and Ansible automation for the Odoo deployment.

## Architecture Overview

The solution consists of the following components:

- **OpenLDAP**: User directory (port 389)
- **PostgreSQL**: Database for Keycloak (internal)
- **Keycloak**: Identity Provider / IAM (port 8080)
- **LDAP Account Manager (LAM)**: Web UI for LDAP administration (port 8081)
- **Horizon**: OpenStack dashboard with WebSSO login page
- **Keystone**: OpenStack identity service with federation mapping
- **WireGuard**: VPN tunnel (server and clients)
- **Terraform**: Infrastructure as Code to provision the OpenStack instance
- **Ansible**: Automation for deploying Odoo and related services

## Number of Containers

The `docker-compose.yml` defines **four containers**:

1. `openldap`
2. `db` (PostgreSQL)
3. `keycloak`
4. `lam` (LDAP Account Manager)

## Environment Access

Below are example access points. **Replace placeholders with real credentials before use.**

| Service | Access URL | Username | Password / Secret |
|---------|------------|----------|-------------------|
| Keycloak Admin | `http://localhost:8080/admin` | `kcadmin` | `<keycloak-admin-password>` |
| Keycloak Realm | `http://localhost:8080/realms/osc/account` | `kacem` | `<kacem-password>` |
| LDAP Account Manager | `http://localhost:8081` | `admin` | `<ldap-admin-password>` |
| OpenStack Horizon | `https://cloud.grouperif.com` | `admin` | `<admin-password>` |
| OpenStack CLI | `source /etc/kolla/admin-openrc.sh` | `admin` | `<admin-password>` |

- **Terraform token**: `<terraform-cloud-token>`
- **WireGuard keys**: Keep private keys in a secure vault; only public keys are safe to share.
- **OpenLDAP bind DN**: `cn=admin,dc=osc,dc=local`
- **OpenLDAP base DN**: `dc=osc,dc=local`
