=head1

Locale::CLDR::Locales::Fr::Any::Vu - Package for language French

=cut

package Locale::CLDR::Locales::Fr::Any::Vu;
# This file auto generated from Data\common\main\fr_VU.xml
#	on Tue  6 Jan 10:37:50 am GMT
# XML file generated 2014-07-23 16:10:33 -0500 (Wed, 23 Jul 2014)

use version;

our $VERSION = version->declare('v0.26.8');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::Fr::Any');
has 'curriencies' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'VUV' => {
			symbol => 'VT',
		},
	} },
);


no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
