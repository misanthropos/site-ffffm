GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	ebtables-source-filter \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radvd \
	radv-filterd \
	respondd \
	status-page \
	web-advanced \
	web-wizard

GLUON_SITE_PACKAGES := haveged iwinfo

# Enable multidomain support
GLUON_MULTIDOMAIN := 1

#####################################################################################################################

# This is the Multidomain Stable branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := v4.0

# Development branch information
GLUON_BRANCH ?= multidomain-next

DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(GLUON_BRANCH)-$(shell date '+%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with given mesh support (ibss or 11s)
GLUON_WLAN_MESH ?= 11s
