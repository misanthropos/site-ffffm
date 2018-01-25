GLUON_SITE_PACKAGES := \
	gluon-mesh-vpn-fastd \
	gluon-mesh-batman-adv-14 \
	gluon-respondd \
	gluon-autoupdater \
	gluon-setup-mode \
	gluon-config-mode-core \
	gluon-config-mode-hostname \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-config-mode-autoupdater \
	gluon-config-mode-mesh-vpn \
	gluon-web-admin \
	gluon-web-network \
	gluon-web-wifi-config \
	gluon-web-private-wifi \
	gluon-radvd \
	gluon-status-page \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-segment-mld \
	gluon-ebtables-source-filter \
	ffffm-banner_legacy \
	ffffm-keep-radio-channel \
	ffffm-autoupdater-use-site-conf-branch
	iwinfo \
	iptables \
	haveged \

#	gluon-web-autoupdater \
#	ffffm-restart-respondd \
#	ffffm-ath9k-broken-wifi-workaround 
#	gluon-web-mesh-vpn-fastd \


include $(GLUON_SITEDIR)/specific_site.mk 


#####################################################################################################################

# This is the Test branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := vHomebrew-test

# For homebrew development add e.g. date and time 
# (Note: Don't use the ':' char. It will break the build)
DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(shell date '+%Y.%m.%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Development branch information
GLUON_BRANCH ?= test

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= de

# region information for regulatory compliance
GLUON_REGION ?= eu

# Prefer ath10k firmware with given mesh support (ibss or 11s)
GLUON_ATH10K_MESH ?= ibss
