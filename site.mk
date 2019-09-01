GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	ebtables-source-filter \
	mesh-batman-adv-14 \
	mesh-vpn-fastd \
	radvd \
	radv-filterd \
	respondd \
	scheduled-domain-switch \
	status-page \
	web-advanced \
	web-wizard \
	web-private-wifi \
	web-logging \
	config-mode-domain-select \


GLUON_SITE_PACKAGES := \
	iwinfo \
	iptables \
	haveged \
	ffffm-banner_legacy \
	ffffm-keep-radio-channel \
	ffffm-autoupdater-use-site-conf-branch \
	ffffm-button-bind \
	ffffm-ath9k-broken-wifi-workaround \
	gluon-ssid-changer \
	-gluon-web-autoupdater \
	respondd-module-airtime

include $(GLUON_SITEDIR)/specific_site.mk

# Multidomain support
GLUON_MULTIDOMAIN=1

#####################################################################################################################

# This is the Dev branch

# Gluon Base Release
DEFAULT_GLUON_RELEASE := vHomebrew-dev

# For homebrew development add e.g. date and time
# (Note: Don't use the ':' char. It will break the build)
DEFAULT_GLUON_RELEASE := $(DEFAULT_GLUON_RELEASE)-$(shell date '+%Y.%m.%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Development branch information
GLUON_BRANCH ?= dev

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= de

# region information for regulatory compliance
GLUON_REGION ?= eu


#[22.03. 19:04] <tackin>	neoraider: kann/sollte als make-option das "GLUON_ATH10K_MESH=ibss" drin bleiben?
#[22.03. 19:04] <tackin>	oder kann das schon weg wenn ich den Domain-switch machen will?
#[22.03. 19:05] <neoraider>	GLUON_ATH10K_MESH gibt es sowieso nicht mehr, die heißt jetzt GLUON_WLAN_MESH, und ist standardmäßig 11s
#[22.03. 19:05] <tackin>	upps ... ging an mir vorbei .... 😃
#[22.03. 19:06] <neoraider>	Ich würde empfehlen, sie rauszunehmen - auf ath10k-Geräten wird vor dem Switch dann das 5GHz nicht gehen, aber das kann man nicht verhindern, da wir immer nur eine von den beiden möglichen ath10k-Firmwares in ein Image aufnehmen
#[22.03. 19:06] <tackin>	Top!
# Prefer ath10k firmware with given mesh support (ibss or 11s)
GLUON_WLAN_MESH ?= 11s
