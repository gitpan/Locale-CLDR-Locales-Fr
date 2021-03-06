use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Locale::CLDR::Locales::Fr.pm',
    license             => 'perl',
    requires        => {
        'version'                   => '0.95',
        'DateTime'                  => '0.72',
        'Moose'                     => '2.0401',
        'MooseX::ClassAttribute'    => '0.26',
        'perl'                      => '5.10.0',
		'Locale::CLDR'              => '0.26.8'
    },
    dist_author         => q{John Imrie <john.imrie1@gmail.com>},
    dist_version_from   => 'lib/Locale/CLDR/Locales/Fr.pm',
    build_requires => {
        'ok'                => 0,
        'Test::Exception'   => 0,
        'Test::More'        => '0.98',
    },
    add_to_cleanup      => [ 'Locale-CLDR-Locales::Fr.pm-*' ],
	configure_requires => { 'Module::Build' => '0.40' },
    create_makefile_pl => 'traditional',
	release_status => 'unstable',
	dist_abstract => 'Locale::CLDR - Data Package Locales::Fr.pm',
);

$builder->create_build_script();
