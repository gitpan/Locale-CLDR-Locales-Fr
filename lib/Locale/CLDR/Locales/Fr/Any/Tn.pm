=head1

Locale::CLDR::Locales::Fr::Any::Tn - Package for language French

=cut

package Locale::CLDR::Locales::Fr::Any::Tn;
# This file auto generated from Data\common\main\fr_TN.xml
#	on Tue  6 Jan 10:37:49 am GMT
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
		'TND' => {
			symbol => 'DT',
		},
	} },
);


no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
