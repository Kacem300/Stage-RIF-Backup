# RIF IAM Recovery Repository

This repository contains the configuration files for the OpenStack–Keycloak identity and access management integration, along with WireGuard VPN settings.

## Architecture Overview

The solution consists of the following components:

- **OpenLDAP**: User directory (port 389)
- **PostgreSQL**: Database for Keycloak (internal)
- **Keycloak**: Identity Provider / IAM (port 8080)
- **LDAP Account Manager (LAM)**: Web UI for LDAP administration (port 8081)
- **Horizon**: OpenStack dashboard with WebSSO login page
- **Keystone**: OpenStack identity service with federation mapping
- **WireGuard**: VPN tunnel (server and clients)

## Number of Containers

The `docker-compose.yml` defines **three main containers**:

1. `openldap`
2. `db` (PostgreSQL)
3. `keycloak`

Additionally, `lam` is defined as a fourth service (LDAP Account Manager), making **four containers** in total.

## Directory Structure


