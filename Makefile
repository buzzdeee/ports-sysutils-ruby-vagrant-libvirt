# $OpenBSD: Makefile,v 1.3 2015/07/01 09:00:38 sebastia Exp $

COMMENT =	Puppet module management

DISTNAME =	vagrant-libvirt-0.0.30
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/pradels/vagrant-libvirt
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		sysutils/ruby-fog-libvirt,${MODRUBY_FLAVOR} \
			sysutils/vagrant \
			textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
