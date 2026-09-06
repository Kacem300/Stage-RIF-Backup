# HTTPS / CSRF fix
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# Multi-domain support
OPENSTACK_KEYSTONE_MULTIDOMAIN_SUPPORT = False
OPENSTACK_KEYSTONE_DEFAULT_DOMAIN = 'Default'
OPENSTACK_SSL_NO_VERIFY = True

# Federation management panel
OPENSTACK_KEYSTONE_FEDERATION_MANAGEMENT = True

# WebSSO with local + Keycloak
WEBSSO_ENABLED = True
WEBSSO_CHOICES = (
    ('credentials', 'Login with Keystone '),
    ('keycloak', 'Login with Keycloak'),
)
WEBSSO_IDP_MAPPING = {
    'keycloak': ('keycloak', 'mapped'),
}
WEBSSO_INITIAL_CHOICE = 'credentials'
WEBSSO_USE_HTTP_REFERER = True

# Keystone endpoint used by Horizon
OPENSTACK_KEYSTONE_URL = "http://10.0.1.10:5000/v3"
WEBSSO_KEYSTONE_URL = "https://195.201.169.165:5000/v3"

# Logout redirect for Keycloak users
WEBSSO_DEFAULT_REDIRECT_LOGOUT = "https://195.201.169.165:5000/oidc/callback?logout=https://cloud.grouperif.com/auth/login/"

# Theme RIF
SITE_BRANDING = "Cloud Souverain - Groupe RIF"
AVAILABLE_THEMES = [
    ('default', 'Default OpenStack', 'themes/default'),
    ('rif_theme', 'Thème RIF', 'themes/rif_theme'),
]
DEFAULT_THEME = 'rif_theme'
