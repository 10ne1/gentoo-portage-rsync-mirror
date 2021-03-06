# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/B-Hooks-EndOfScope/B-Hooks-EndOfScope-0.140.0.ebuild,v 1.2 2015/05/03 08:14:45 jer Exp $

EAPI=5

MODULE_AUTHOR=ETHER
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="Execute code after a scope finished compilation"

SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86 ~ppc-aix ~x64-macos"
IUSE="test"

RDEPEND="
	virtual/perl-Carp
	virtual/perl-Scalar-List-Utils
	>=dev-perl/Module-Implementation-0.50.0
	>=dev-perl/Module-Runtime-0.12.0
	>=dev-perl/Sub-Exporter-Progressive-0.1.6
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-CBuilder-0.260.0
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.880.0
	)
"

SRC_TEST=do
