=head1

Locale::CLDR::Locales::Fr::Any::Ca - Package for language French

=cut

package Locale::CLDR::Locales::Fr::Any::Ca;
# This file auto generated from Data\common\main\fr_CA.xml
#	on Tue 30 Dec 10:04:37 pm GMT
# XML file generated 2014-08-14 22:53:08 -0500 (Thu, 14 Aug 2014)

use version;

our $VERSION = version->declare('v0.26.7');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::Fr::Any');
has 'display_name_language' => (
	is			=> 'ro',
	isa			=> 'CodeRef',
	init_arg	=> undef,
	default		=> sub { 
		 sub {
			 my %languages = (
				'en_GB@alt=short' => 'anglais (GB)',
 				'es_ES' => 'espagnol ibérique',
 				'fy' => 'frison',
 				'gag' => 'gag',
 				'gsw' => 'suisse allemand',
 				'gu' => 'goudjarâtî',
 				'ii' => 'yi de Sichuan',
 				'luo' => 'luo',
 				'pt_PT' => 'portugais ibérique',
 				'rw' => 'kinyarwanda',
 				'si' => 'cingalais',
 				'to' => 'tongan',
 				'ug' => 'ouïgour',
 				'ug@alt=variant' => 'ouïghour',
 				'und' => 'indéterminé',
 				'ybb' => 'yémba',

			);
			if (@_) {
				return $languages{$_[0]};
			}
			return \%languages;
		}
	},
);

has 'display_name_script' => (
	is			=> 'ro',
	isa			=> 'CodeRef',
	init_arg	=> undef,
	default		=> sub {
		sub {
			my %scripts = (
			'Deva' => 'devanagari',
 			'Gujr' => 'gujarati',
 			'Hans' => 'idéogrammes han simplifiés',
 			'Hans@alt=stand-alone' => 'chinois simplifié',
 			'Hant' => 'idéogrammes han traditionnels',
 			'Hant@alt=stand-alone' => 'chinois traditionnel',
 			'Mlym' => 'malayâlam',
 			'Orya' => 'oriyâ',
 			'Sinh' => 'cingalais',

			);
			if ( @_ ) {
				return $scripts{$_[0]};
			}
			return \%scripts;
		}
	}
);

has 'display_name_territory' => (
	is			=> 'ro',
	isa			=> 'HashRef[Str]',
	init_arg	=> undef,
	default		=> sub { 
		{
			'BY' => 'Bélarus',
 			'CC' => 'Îles Cocos (Keeling)',
 			'FM' => 'Micronésie',
 			'GS' => 'Géorgie du Sud et les îles Sandwich du Sud',
 			'MF' => 'Saint-Martin (France)',
 			'QO' => 'Océanie éloignée',
 			'SV' => 'Salvador',
 			'SX' => 'Saint-Martin (Pays-Bas)',
 			'VC' => 'Saint-Vincent-et-les Grenadines',

		}
	},
);

has 'display_name_type' => (
	is			=> 'ro',
	isa			=> 'HashRef[HashRef[Str]]',
	init_arg	=> undef,
	default		=> sub {
		{
			'calendar' => {
 				'ethiopic-amete-alem' => q{Calendrier éthiopien de l’An de grâce},
 				'islamic-tbla' => q{calendrier religieux musulman},
 			},
 			'collation' => {
 				'dictionary' => q{Ordre de tri du dictionnaire},
 				'reformed' => q{Ordre de tri réformé},
 				'unihan' => q{Ordre de tri radical et trait},
 			},
 			'numbers' => {
 				'gujr' => q{chiffres gujarati},
 				'mong' => q{Chiffres mongols},
 				'taml' => q{chiffres tamouls traditionnels},
 			},

		}
	},
);

has 'display_name_transform_name' => (
	is			=> 'ro',
	isa			=> 'HashRef[Str]',
	init_arg	=> undef,
	default		=> sub { 
		{
			'numeric' => 'Chiffres',
 			'x-accents' => 'accents',
 			'x-fullwidth' => 'Pleine largeur',
 			'x-halfwidth' => 'Demie largeur',
 			'x-jamo' => 'jamo',
 			'x-pinyin' => 'pinyin',
 			'x-publishing' => 'Édition',

		}
	},
);

has 'alternate_quote_start' => (
	is			=> 'ro',
	isa			=> 'Str',
	init_arg	=> undef,
	default		=> qq{‹},
);

has 'alternate_quote_end' => (
	is			=> 'ro',
	isa			=> 'Str',
	init_arg	=> undef,
	default		=> qq{›},
);

has 'duration_units' => (
	is			=> 'ro',
	isa			=> 'HashRef[Str]',
	init_arg	=> undef,
	default		=> sub { {
				hm => 'h:mm',
				hms => 'h:mm:ss',
				ms => 'm:ss',
			} }
);

has 'units' => (
	is			=> 'ro',
	isa			=> 'HashRef[HashRef[HashRef[Str]]]',
	init_arg	=> undef,
	default		=> sub { {
				'long' => {
					'acre' => {
						'' => q(acres),
						'one' => q({0} acre),
						'other' => q({0} acres),
					},
					'arc-minute' => {
						'one' => q({0} minute d’angle),
						'other' => q({0} minutes d’angle),
					},
					'cubic-mile' => {
						'' => q(milles cubes),
						'one' => q({0} mille cube),
						'other' => q({0} milles cubes),
					},
					'cubic-yard' => {
						'' => q(verges cubes),
						'one' => q({0} verge cube),
						'other' => q({0} verges cubes),
					},
					'foodcalorie' => {
						'' => q(kilocalories),
						'one' => q({0} kilocalorie),
						'other' => q({0} kilocalories),
					},
					'g-force' => {
						'' => q(force G),
					},
					'kilometer-per-hour' => {
						'' => q(kilomètres à l’heure),
					},
					'mile' => {
						'' => q(mille),
						'one' => q({0} mille),
						'other' => q({0} milles),
					},
					'mile-per-gallon' => {
						'' => q(milles au gallon),
						'one' => q({0} mille au gallon),
						'other' => q({0} milles au gallon),
					},
					'mile-per-hour' => {
						'' => q(milles par heure),
						'one' => q({0} mille par heure),
						'other' => q({0} milles par heure),
					},
					'pint' => {
						'' => q(chopine),
						'one' => q({0} chopine),
						'other' => q({0} chopines),
					},
					'quart' => {
						'' => q(pintes),
						'one' => q({0} pinte),
						'other' => q({0} pintes),
					},
					'second' => {
						'' => q({0} à la seconde),
					},
					'square-mile' => {
						'' => q(milles carrés),
						'one' => q({0} mille carré),
						'other' => q({0} milles carrés),
					},
					'square-yard' => {
						'' => q(verges carrées),
						'one' => q({0} verge carrée),
						'other' => q({0} verges carrées),
					},
					'teaspoon' => {
						'' => q(cuillères à thé),
						'one' => q({0} cuillère à thé),
						'other' => q({0} cuillères à thé),
					},
					'yard' => {
						'' => q(verges),
						'one' => q({0} verge),
						'other' => q({0} verges),
					},
				},
				'narrow' => {
					'celsius' => {
						'one' => q({0} °C),
						'other' => q({0} °C),
					},
					'month' => {
						'' => q(m.),
					},
				},
				'short' => {
					'acre-foot' => {
						'' => q(ac-pi),
						'one' => q({0} ac-pi),
						'other' => q({0} ac-pi),
					},
					'astronomical-unit' => {
						'one' => q({0} ua),
						'other' => q({0} ua),
					},
					'centiliter' => {
						'' => q(cL),
						'one' => q({0} cL),
						'other' => q({0} cL),
					},
					'cubic-foot' => {
						'one' => q({0} pi³),
						'other' => q({0} pi³),
					},
					'cubic-yard' => {
						'' => q(vg³),
						'one' => q({0} vg³),
						'other' => q({0} vg³),
					},
					'deciliter' => {
						'' => q(dL),
						'one' => q({0} dL),
						'other' => q({0} dL),
					},
					'fluid-ounce' => {
						'' => q(oz liq.),
						'one' => q({0} oz liq.),
						'other' => q({0} oz liq.),
					},
					'foodcalorie' => {
						'' => q(kcal),
						'one' => q({0} kcal),
						'other' => q({0} kcal),
					},
					'foot' => {
						'one' => q({0} pi),
						'other' => q({0} pi),
					},
					'hectoliter' => {
						'' => q(hL),
						'one' => q({0} hL),
						'other' => q({0} hL),
					},
					'inch-hg' => {
						'' => q(po Hg),
						'one' => q({0} po Hg),
						'other' => q({0} po Hg),
					},
					'karat' => {
						'' => q(carats),
					},
					'light-year' => {
						'' => q(al),
						'one' => q({0} al),
						'other' => q({0} al),
					},
					'megaliter' => {
						'' => q(ML),
						'one' => q({0} ML),
						'other' => q({0} ML),
					},
					'meter-per-second' => {
						'' => q(mètres par seconde),
					},
					'milliliter' => {
						'' => q(mL),
						'one' => q({0} mL),
						'other' => q({0} mL),
					},
					'month' => {
						'' => q(m.),
						'one' => q({0} m.),
						'other' => q({0} m.),
					},
					'nautical-mile' => {
						'' => q(NM),
						'one' => q({0} NM),
						'other' => q({0} NM),
					},
					'pint' => {
						'' => q(chop),
						'one' => q({0} chop),
						'other' => q({0} chop),
					},
					'pound-per-square-inch' => {
						'' => q(psi),
						'one' => q({0} psi),
						'other' => q({0} psi),
					},
					'quart' => {
						'' => q(pte),
						'one' => q({0} pte),
						'other' => q({0} pte),
					},
					'square-foot' => {
						'one' => q({0} pi²),
						'other' => q({0} pi²),
					},
					'square-yard' => {
						'' => q(vg²),
						'one' => q({0} vg²),
						'other' => q({0} vg²),
					},
					'teaspoon' => {
						'' => q(c. à t.),
						'one' => q({0} c. à t.),
						'other' => q({0} c. à t.),
					},
					'ton' => {
						'' => q(tc),
						'one' => q({0} tc),
						'other' => q({0} tc),
					},
					'yard' => {
						'' => q(vg),
						'one' => q({0} vg),
						'other' => q({0} vg),
					},
				},
			} }
);

has 'number_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		decimalFormat => {
			'short' => {
				'1000000000' => {
					'one' => '0 G',
					'other' => '0 G',
				},
				'10000000000' => {
					'one' => '00 G',
					'other' => '00 G',
				},
				'100000000000' => {
					'one' => '000 G',
					'other' => '000 G',
				},
				'1000000000000' => {
					'one' => '0 T',
					'other' => '0 T',
				},
				'10000000000000' => {
					'one' => '00 T',
					'other' => '00 T',
				},
				'100000000000000' => {
					'one' => '000 T',
					'other' => '000 T',
				},
			},
		},
} },
);

has 'curriencies' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'ARS' => {
			symbol => 'ARS',
		},
		'AUD' => {
			symbol => '$ AU',
		},
		'AZN' => {
			display_name => {
				'currency' => q(manat azerbaïdjanais),
				'one' => q(manat azerbaïdjanais),
				'other' => q(manats azerbaïdjanais),
			},
		},
		'BMD' => {
			symbol => 'BMD',
		},
		'BND' => {
			symbol => 'BND',
		},
		'BSD' => {
			symbol => 'BSD',
		},
		'BZD' => {
			symbol => 'BZD',
		},
		'CAD' => {
			symbol => '$',
		},
		'CLP' => {
			symbol => 'CLP',
		},
		'CNY' => {
			symbol => 'CN¥',
		},
		'COP' => {
			symbol => 'COP',
		},
		'CVE' => {
			display_name => {
				'currency' => q(escudo du Cap-Vert),
				'one' => q(escudo du Cap-Vert),
				'other' => q(escudos du Cap-Vert),
			},
		},
		'FJD' => {
			symbol => 'FJD',
		},
		'FKP' => {
			symbol => 'FKP',
			display_name => {
				'currency' => q(livre des Îles Malouines),
				'one' => q(livre des Îles Malouines),
				'other' => q(livres des Îles Malouines),
			},
		},
		'GBP' => {
			symbol => '£',
		},
		'GEL' => {
			display_name => {
				'one' => q(lari géorgien),
				'other' => q(laris géorgiens),
			},
		},
		'GIP' => {
			symbol => 'GIP',
		},
		'GYD' => {
			display_name => {
				'one' => q(dollar guyanien),
				'other' => q(dollars guyaniens),
			},
		},
		'HKD' => {
			symbol => '$ HK',
		},
		'ILS' => {
			symbol => 'ILS',
		},
		'INR' => {
			symbol => 'INR',
		},
		'JPY' => {
			symbol => '¥',
		},
		'KRW' => {
			symbol => 'KRW',
		},
		'LAK' => {
			display_name => {
				'currency' => q(kip laotien),
				'one' => q(kip laotien),
				'other' => q(kips laotiens),
			},
		},
		'LBP' => {
			symbol => 'LBP',
		},
		'MXN' => {
			symbol => 'MXN',
		},
		'NAD' => {
			symbol => 'NAD',
		},
		'NZD' => {
			symbol => '$ NZ',
		},
		'PGK' => {
			display_name => {
				'currency' => q(kina papou-néo-guinéen),
				'one' => q(kina papou-néo-guinéen),
				'other' => q(kinas papou-néo-guinéens),
			},
		},
		'QAR' => {
			display_name => {
				'currency' => q(riyal du Qatar),
				'one' => q(riyal du Qatar),
				'other' => q(riyals du Qatar),
			},
		},
		'SBD' => {
			symbol => 'SBD',
		},
		'SGD' => {
			symbol => '$ SG',
		},
		'SRD' => {
			symbol => 'SRD',
			display_name => {
				'currency' => q(dollar du Suriname),
				'one' => q(dollar du Suriname),
				'other' => q(dollars du Suriname),
			},
		},
		'THB' => {
			symbol => 'THB',
		},
		'TOP' => {
			display_name => {
				'currency' => q(pa’anga),
				'one' => q(pa’anga),
				'other' => q(pa’angas),
			},
		},
		'TTD' => {
			symbol => 'TTD',
			display_name => {
				'currency' => q(dollar de Trinité-et-Tobago),
			},
		},
		'USD' => {
			symbol => '$ US',
		},
		'UYU' => {
			symbol => 'UYU',
		},
		'VND' => {
			symbol => 'VND',
		},
		'VUV' => {
			display_name => {
				'currency' => q(vatu),
				'one' => q(vatu),
				'other' => q(vatus),
			},
		},
		'WST' => {
			symbol => 'WST',
			display_name => {
				'currency' => q(tala),
				'one' => q(tala),
				'other' => q(talas),
			},
		},
		'XAF' => {
			symbol => 'XAF',
		},
		'XOF' => {
			symbol => 'XOF',
		},
		'XPF' => {
			symbol => 'XPF',
		},
		'XXX' => {
			display_name => {
				'one' => q(devise inconnue ou non valide),
				'other' => q(devise inconnue ou non valide),
			},
		},
	} },
);


has 'calendar_months' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
			'gregorian' => {
				'stand-alone' => {
					abbreviated => {
						nonleap => [
							'janv.',
							'févr.',
							'mars',
							'avr.',
							'mai',
							'juin',
							'juil.',
							'août',
							'sept.',
							'oct.',
							'nov.',
							'déc.'
						],
						leap => [
							
						],
					},
					wide => {
						nonleap => [
							'janvier',
							'février',
							'mars',
							'avril',
							'mai',
							'juin',
							'juillet',
							'août',
							'septembre',
							'octobre',
							'novembre',
							'décembre'
						],
						leap => [
							
						],
					},
				},
			},
	} },
);

has 'calendar_days' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
			'gregorian' => {
				'stand-alone' => {
					abbreviated => {
						mon => 'lun.',
						tue => 'mar.',
						wed => 'mer.',
						thu => 'jeu.',
						fri => 'ven.',
						sat => 'sam.',
						sun => 'dim.'
					},
					short => {
						mon => 'lun.',
						tue => 'mar.',
						wed => 'mer.',
						thu => 'jeu.',
						fri => 'ven.',
						sat => 'sam.',
						sun => 'dim.'
					},
					wide => {
						mon => 'lundi',
						tue => 'mardi',
						wed => 'mercredi',
						thu => 'jeudi',
						fri => 'vendredi',
						sat => 'samedi',
						sun => 'dimanche'
					},
				},
			},
	} },
);

has 'day_period_data' => (
	traits		=> ['Code'],
	is			=> 'ro',
	isa			=> 'CodeRef',
	init_arg	=> undef,
	handles		=> { call => 'execute_method' },
	default		=> sub { sub {
		# Time in hhmm format
		my ($self, $type, $time) = @_;
		SWITCH:
		for ($type) {
			if ($_ eq 'generic') {
				return 'noon' if $time == 1200;
				return 'morning' if $time >= 0000
					&& $time < 1200;
				return 'afternoon' if $time > 1200
					&& $time < 1900;
				return 'night' if $time >= 1900
					&& $time < 2400;
			last SWITCH;
			}
			if ($_ eq 'gregorian') {
				return 'noon' if $time == 1200;
				return 'morning' if $time >= 0000
					&& $time < 1200;
				return 'afternoon' if $time > 1200
					&& $time < 1900;
				return 'night' if $time >= 1900
					&& $time < 2400;
			last SWITCH;
			}
			if ($_ eq 'islamic') {
				return 'noon' if $time == 1200;
				return 'morning' if $time >= 0000
					&& $time < 1200;
				return 'afternoon' if $time > 1200
					&& $time < 1900;
				return 'night' if $time >= 1900
					&& $time < 2400;
			last SWITCH;
			}
		}
	} },
);

has 'day_periods' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'gregorian' => {
			'format' => {
				'narrow' => {
					'am' => q{a},
				},
			},
		},
	} },
);

has 'eras' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
		},
		'gregorian' => {
		},
		'islamic' => {
		},
	} },
);

has 'date_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
			'medium' => q{G y-MM-dd},
			'short' => q{GGGGG yy-MM-dd},
		},
		'gregorian' => {
			'medium' => q{y-MM-dd},
			'short' => q{yy-MM-dd},
		},
		'islamic' => {
			'short' => q{y-MM-dd GGGGG},
		},
	} },
);

has 'time_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
		},
		'gregorian' => {
			'full' => q{HH 'h' mm 'min' ss 's' zzzz},
		},
		'islamic' => {
		},
	} },
);

has 'datetime_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
		},
		'gregorian' => {
			'full' => q{{1} 'à' {0}},
			'long' => q{{1} 'à' {0}},
		},
		'islamic' => {
		},
	} },
);

has 'datetime_formats_available_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'gregorian' => {
			MEd => q{E M-d},
			MMd => q{MM-d},
			MMdd => q{MM-dd},
			Md => q{M-d},
			yM => q{y-MM},
			yMEd => q{E y-MM-dd},
			yMM => q{y-MM},
			yMd => q{y-MM-dd},
		},
		'islamic' => {
			MEd => q{E d MMM},
			Md => q{MM-dd},
			yyyyM => q{y-MM GGGGG},
			yyyyMEd => q{E y-MM-dd GGGGG},
			yyyyMd => q{y-MM-dd GGGGG},
		},
		'generic' => {
			MEd => q{E M-d},
			MMd => q{MM-d},
			MMdd => q{MM-dd},
			Md => q{M-d},
			yyyyM => q{G y-MM},
			yyyyMEd => q{E G y-MM-dd},
			yyyyMM => q{G y-MM},
			yyyyMd => q{G y-MM-dd},
		},
	} },
);

has 'datetime_formats_append_item' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
	} },
);

has 'datetime_formats_interval' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'gregorian' => {
			H => {
				H => q{HH–HH},
			},
			Hm => {
				H => q{HH:mm–HH:mm},
				m => q{HH:mm–HH:mm},
			},
			Hmv => {
				H => q{HH:mm–HH:mm v},
				m => q{HH:mm–HH:mm v},
			},
			Hv => {
				H => q{HH–HH v},
			},
			MEd => {
				M => q{E MM-dd – E MM-dd},
				d => q{E MM-dd – E MM-dd},
			},
			Md => {
				M => q{MM-dd – MM-dd},
				d => q{MM-dd – MM-dd},
			},
			d => {
				d => q{d–d},
			},
			h => {
				a => q{h 'h' a – h 'h' a},
				h => q{h–h a},
			},
			hm => {
				h => q{h:mm–h:mm a},
				m => q{h:mm–h:mm a},
			},
			hmv => {
				h => q{h:mm–h:mm a v},
				m => q{h:mm–h:mm a v},
			},
			hv => {
				a => q{h 'h' a – h 'h' a v},
				h => q{h–h a v},
			},
			yM => {
				M => q{y-MM – y-MM},
				y => q{y-MM – y-MM},
			},
			yMEd => {
				M => q{'du' E y-MM-dd 'au' E y-MM-dd},
				d => q{'du' E y-MM-dd 'au' E y-MM-dd},
				y => q{'du' E y-MM-dd 'au' E y-MM-dd},
			},
			yMMM => {
				y => q{'de' MMM y 'à' MMM y},
			},
			yMMMEd => {
				M => q{'du' E d MMM 'au' E d MMM y},
				d => q{'du' E d 'au' E d MMM y},
				y => q{'du' E d MMM y 'au' E d MMM y},
			},
			yMMMd => {
				M => q{'du' d MMM 'au' d MMM y},
				y => q{'du' d MMM y 'au' d MMM y},
			},
			yMd => {
				M => q{y-MM-dd – y-MM-dd},
				d => q{y-MM-dd – y-MM-dd},
				y => q{y-MM-dd – y-MM-dd},
			},
		},
		'generic' => {
			H => {
				H => q{HH–HH},
			},
			Hm => {
				H => q{HH:mm–HH:mm},
				m => q{HH:mm–HH:mm},
			},
			Hmv => {
				H => q{HH:mm–HH:mm v},
				m => q{HH:mm–HH:mm v},
			},
			Hv => {
				H => q{HH–HH v},
			},
			M => {
				M => q{M–M},
			},
			MEd => {
				M => q{E MM-dd – E MM-dd},
				d => q{E MM-dd – E MM-dd},
			},
			MMMEd => {
				d => q{E d – E d MMM},
			},
			Md => {
				M => q{MM-dd – MM-dd},
				d => q{MM-dd – MM-dd},
			},
			d => {
				d => q{d–d},
			},
			h => {
				h => q{h–h a},
			},
			hm => {
				h => q{h:mm–h:mm a},
				m => q{h:mm–h:mm a},
			},
			hmv => {
				h => q{h:mm–h:mm a v},
				m => q{h:mm–h:mm a v},
			},
			hv => {
				h => q{h–h a v},
			},
			y => {
				y => q{G y–y},
			},
			yM => {
				M => q{G y-MM – y-MM},
				y => q{G y-MM – y-MM},
			},
			yMEd => {
				M => q{'du' E y-MM-dd 'au' E y-MM-dd G},
				d => q{'du' E y-MM-dd 'au' E y-MM-dd G},
				y => q{'du' E y-MM-dd 'au' E y-MM-dd G},
			},
			yMMM => {
				y => q{'de' MMM y 'à' MMM y G},
			},
			yMMMEd => {
				M => q{'du' E d MMM 'au' E d MMM y G},
				d => q{'du' E d 'au' E d MMM y G},
				y => q{'du' E d MMM y 'au' E d MMM y G},
			},
			yMMMd => {
				M => q{'du' d MMM 'au' d MMM y G},
				y => q{'du' d MMM y 'au' d MMM y G},
			},
			yMd => {
				M => q{G y-MM-dd – y-MM-dd},
				d => q{G y-MM-dd – y-MM-dd},
				y => q{G y-MM-dd – y-MM-dd},
			},
		},
	} },
);

has 'time_zone_names' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default	=> sub { {
		regionFormat => q(Heure de {0}),
		regionFormat => q({0} (heure avancée)),
		regionFormat => q({0} (heure légale)),
		'Acre' => {
			long => {
				'daylight' => q(heure avancée de l’Acre),
				'generic' => q(heure de l’Acre),
				'standard' => q(heure normale de l’Acre),
			},
		},
		'Africa/Ndjamena' => {
			exemplarCity => q#Ndjamena#,
		},
		'Africa_Central' => {
			long => {
				'standard' => q(heure d’Afrique centrale),
			},
		},
		'Africa_Eastern' => {
			long => {
				'standard' => q(Heure d’Afrique orientale),
			},
		},
		'Africa_Southern' => {
			long => {
				'standard' => q(heure normale d’Afrique du Sud),
			},
		},
		'Africa_Western' => {
			long => {
				'daylight' => q(heure avancée d’Afrique de l’Ouest),
				'generic' => q(heure d’Afrique de l’Ouest),
				'standard' => q(heure normale d’Afrique de l’Ouest),
			},
		},
		'Alaska' => {
			long => {
				'daylight' => q(heure avancée de l’Alaska),
				'generic' => q(heure de l’Alaska),
				'standard' => q(heure normale de l’Alaska),
			},
		},
		'Almaty' => {
			long => {
				'daylight' => q(heure avancée d’Alma Ata),
				'generic' => q(heure d’Alma Ata),
				'standard' => q(heure normale d’Alma Ata),
			},
		},
		'Amazon' => {
			long => {
				'daylight' => q(heure avancée de l’Amazonie),
				'generic' => q(heure de l’Amazonie),
				'standard' => q(heure normale de l’Amazonie),
			},
		},
		'America/Barbados' => {
			exemplarCity => q#Barbade (La)#,
		},
		'America/Cayman' => {
			exemplarCity => q#Îles Caïmans#,
		},
		'America/North_Dakota/New_Salem' => {
			exemplarCity => q#New Salem, Dakota du Nord#,
		},
		'America/St_Kitts' => {
			exemplarCity => q#Saint-Christophe-et-Niévès#,
		},
		'America/St_Thomas' => {
			exemplarCity => q#Saint Thomas#,
		},
		'America_Central' => {
			long => {
				'daylight' => q(heure avancée du Centre),
				'generic' => q(heure du Centre),
				'standard' => q(heure normale du Centre),
			},
			short => {
				'daylight' => q(HAC),
				'generic' => q(HC),
				'standard' => q(HNC),
			},
		},
		'America_Eastern' => {
			long => {
				'daylight' => q(heure avancée de l’Est),
				'generic' => q(heure de l’Est),
				'standard' => q(heure normale de l’Est),
			},
			short => {
				'daylight' => q(HAE),
				'generic' => q(HE),
				'standard' => q(HNE),
			},
		},
		'America_Mountain' => {
			long => {
				'daylight' => q(heure avancée des Rocheuses),
				'generic' => q(heure des Rocheuses),
				'standard' => q(heure normale des Rocheuses),
			},
			short => {
				'daylight' => q(HAR),
				'generic' => q(HR),
				'standard' => q(HNR),
			},
		},
		'America_Pacific' => {
			long => {
				'daylight' => q(heure avancée du Pacifique),
				'generic' => q(heure du Pacifique),
				'standard' => q(heure normale du Pacifique),
			},
			short => {
				'daylight' => q(HAP),
				'generic' => q(HP),
				'standard' => q(HNP),
			},
		},
		'Anadyr' => {
			long => {
				'daylight' => q(heure avancée d’Anadyr),
				'generic' => q(heure d’Anadyr),
				'standard' => q(heure normale d’Anadyr),
			},
		},
		'Apia' => {
			long => {
				'daylight' => q(heure avancée d’Apia),
				'generic' => q(heure d’Apia),
				'standard' => q(heure normale d’Apia),
			},
		},
		'Aqtau' => {
			long => {
				'daylight' => q(heure avancée d’Aktaou),
				'generic' => q(heure d’Aktaou),
				'standard' => q(heure normale d’Aktaou),
			},
		},
		'Aqtobe' => {
			long => {
				'daylight' => q(heure avancée d’Aqtöbe),
				'generic' => q(heure d’Aqtöbe),
				'standard' => q(heure normale d’Aqtöbe),
			},
		},
		'Arabian' => {
			long => {
				'daylight' => q(heure avancée de l’Arabie),
				'generic' => q(heure de l’Arabie),
				'standard' => q(heure normale de l’Arabie),
			},
		},
		'Argentina' => {
			long => {
				'daylight' => q(heure avancée de l’Argentine),
				'generic' => q(heure de l’Argentine),
				'standard' => q(heure normale d’Argentine),
			},
		},
		'Argentina_Western' => {
			long => {
				'daylight' => q(heure avancée de l’Ouest argentin),
				'generic' => q(heure de l’Ouest argentin),
				'standard' => q(heure normale de l’Ouest argentin),
			},
		},
		'Armenia' => {
			long => {
				'daylight' => q(heure avancée d’Arménie),
				'generic' => q(heure de l’Arménie),
				'standard' => q(heure normale de l’Arménie),
			},
		},
		'Asia/Baghdad' => {
			exemplarCity => q#Baghdad#,
		},
		'Asia/Dhaka' => {
			exemplarCity => q#Dacca#,
		},
		'Asia/Thimphu' => {
			exemplarCity => q#Thimphou#,
		},
		'Atlantic' => {
			long => {
				'daylight' => q(heure avancée de l’Atlantique),
				'generic' => q(heure de l’Atlantique),
				'standard' => q(heure normale de l’Atlantique),
			},
		},
		'Atlantic/Faeroe' => {
			exemplarCity => q#Îles Féroé#,
		},
		'Australia_Central' => {
			long => {
				'daylight' => q(heure avancée du centre de l’Australie),
				'generic' => q(heure du centre de l’Australie),
				'standard' => q(heure normale du centre de l’Australie),
			},
		},
		'Australia_CentralWestern' => {
			long => {
				'daylight' => q(heure avancée du centre-ouest de l’Australie),
				'generic' => q(heure du centre-ouest de l’Australie),
				'standard' => q(heure normale du centre-ouest de l’Australie),
			},
		},
		'Australia_Eastern' => {
			long => {
				'daylight' => q(heure avancée de l’Est de l’Australie),
				'generic' => q(heure de l’Est de l’Australie),
				'standard' => q(heure normale de l’Est de l’Australie),
			},
		},
		'Australia_Western' => {
			long => {
				'daylight' => q(heure avancée de l’Ouest de l’Australie),
				'generic' => q(heure de l’Ouest de l’Australie),
				'standard' => q(heure normale de l’Ouest de l’Australie),
			},
		},
		'Azerbaijan' => {
			long => {
				'daylight' => q(heure avancée d’Azerbaïdjan),
				'generic' => q(heure de l’Azerbaïdjan),
				'standard' => q(heure normale de l’Azerbaïdjan),
			},
		},
		'Azores' => {
			long => {
				'daylight' => q(heure avancée des Açores),
				'generic' => q(heure des Açores),
				'standard' => q(heure normale des Açores),
			},
		},
		'Bangladesh' => {
			long => {
				'daylight' => q(heure avancée du Bangladesh),
				'generic' => q(heure du Bangladesh),
				'standard' => q(heure normale du Bangladesh),
			},
		},
		'Brasilia' => {
			long => {
				'daylight' => q(heure avancée de Brasilia),
				'generic' => q(heure de Brasilia),
				'standard' => q(heure normale de Brasilia),
			},
		},
		'Cape_Verde' => {
			long => {
				'daylight' => q(heure avancée du Cap-Vert),
				'generic' => q(heure du Cap-Vert),
				'standard' => q(heure normale du Cap-Vert),
			},
		},
		'Chatham' => {
			long => {
				'daylight' => q(heure avancée des Îles Chatham),
				'generic' => q(heure des îles Chatham),
				'standard' => q(heure normale des Îles Chatham),
			},
		},
		'Chile' => {
			long => {
				'daylight' => q(heure avancée du Chili),
				'generic' => q(heure du Chili),
				'standard' => q(heure normale du Chili),
			},
		},
		'China' => {
			long => {
				'daylight' => q(heure avancée de Chine),
				'generic' => q(heure de Chine),
				'standard' => q(heure normale de Chine),
			},
		},
		'Choibalsan' => {
			long => {
				'daylight' => q(heure avancée de Choibalsan),
				'generic' => q(heure de Choibalsan),
				'standard' => q(heure normale de Choibalsan),
			},
		},
		'Colombia' => {
			long => {
				'daylight' => q(heure avancée de Colombie),
				'generic' => q(heure de Colombie),
				'standard' => q(heure normale de Colombie),
			},
		},
		'Cook' => {
			long => {
				'daylight' => q(heure avancée des îles Cook),
				'generic' => q(heure des îles Cook),
				'standard' => q(heure normale des îles Cook),
			},
		},
		'Cuba' => {
			long => {
				'daylight' => q(heure avancée de Cuba),
				'generic' => q(heure de Cuba),
				'standard' => q(heure normale de Cuba),
			},
		},
		'Easter' => {
			long => {
				'daylight' => q(heure avancée de l’île de Pâques),
				'generic' => q(heure de l’île de Pâques),
				'standard' => q(heure normale de l’île de Pâques),
			},
		},
		'Europe/Dublin' => {
			long => {
				'daylight' => q(heure avancée irlandaise),
			},
		},
		'Europe/London' => {
			long => {
				'daylight' => q(heure avancée britannique),
			},
		},
		'Europe/Vatican' => {
			exemplarCity => q#Vatican#,
		},
		'Europe_Central' => {
			long => {
				'daylight' => q(heure avancée d’Europe centrale),
				'generic' => q(heure d’Europe centrale),
				'standard' => q(heure normale d’Europe centrale),
			},
		},
		'Europe_Eastern' => {
			long => {
				'daylight' => q(heure avancée d’Europe de l’Est),
				'generic' => q(heure d’Europe de l’Est),
				'standard' => q(heure normale d’Europe de l’Est),
			},
		},
		'Europe_Western' => {
			long => {
				'daylight' => q(heure avancée d’Europe de l’Ouest),
				'generic' => q(heure d’Europe de l’Ouest),
				'standard' => q(heure normale d’Europe de l’Ouest),
			},
		},
		'Falkland' => {
			long => {
				'daylight' => q(heure avancée des îles Malouines),
				'generic' => q(heure des îles Malouines),
				'standard' => q(heure normale des îles Malouines),
			},
		},
		'Fiji' => {
			long => {
				'daylight' => q(heure avancée des îles Fidji),
				'generic' => q(heure des îles Fidji),
				'standard' => q(heure normale des îles Fidji),
			},
		},
		'French_Guiana' => {
			long => {
				'standard' => q(heure de Guyane française),
			},
		},
		'Georgia' => {
			long => {
				'daylight' => q(heure avancée de Géorgie),
				'generic' => q(heure de la Géorgie),
				'standard' => q(heure normale de la Géorgie),
			},
		},
		'Greenland_Eastern' => {
			long => {
				'daylight' => q(heure avancée de l’Est du Groenland),
				'generic' => q(heure de l’Est du Groenland),
				'standard' => q(heure normale de l’Est du Groenland),
			},
		},
		'Greenland_Western' => {
			long => {
				'daylight' => q(heure avancée de l’Ouest du Groenland),
				'generic' => q(heure de l’Ouest du Groenland),
				'standard' => q(heure normale de l’Ouest du Groenland),
			},
		},
		'Hawaii_Aleutian' => {
			long => {
				'daylight' => q(heure avancée d’Hawaï-Aléoutiennes),
				'generic' => q(heure d’Hawaï-Aléoutiennes),
				'standard' => q(heure normale d’Hawaï-Aléoutiennes),
			},
		},
		'Hong_Kong' => {
			long => {
				'daylight' => q(heure avancée de Hong Kong),
				'generic' => q(heure de Hong Kong),
				'standard' => q(heure normale de Hong Kong),
			},
		},
		'Hovd' => {
			long => {
				'daylight' => q(heure avancée de Hovd),
				'generic' => q(heure de Hovd),
				'standard' => q(heure normale de Hovd),
			},
		},
		'Indian/Chagos' => {
			exemplarCity => q#Archipel des Chagos#,
		},
		'Indian/Christmas' => {
			exemplarCity => q#Île Christmas#,
		},
		'Indian/Cocos' => {
			exemplarCity => q#Îles Cocos#,
		},
		'Indian/Comoro' => {
			exemplarCity => q#Union des Comores#,
		},
		'Indian/Kerguelen' => {
			exemplarCity => q#Îles Kerguelen#,
		},
		'Iran' => {
			long => {
				'daylight' => q(heure avancée d’Iran),
				'generic' => q(heure de l’Iran),
				'standard' => q(heure normale d’Iran),
			},
		},
		'Irkutsk' => {
			long => {
				'daylight' => q(heure avancée d’Irkoutsk),
				'generic' => q(heure d’Irkoutsk),
				'standard' => q(heure normale d’Irkoutsk),
			},
		},
		'Israel' => {
			long => {
				'daylight' => q(heure avancée d’Israël),
				'generic' => q(heure d’Israël),
				'standard' => q(heure normale d’Israël),
			},
		},
		'Japan' => {
			long => {
				'daylight' => q(heure avancée du Japon),
				'generic' => q(heure du Japon),
				'standard' => q(heure normale du Japon),
			},
		},
		'Kamchatka' => {
			long => {
				'daylight' => q(heure avancée de Petropavlovsk-Kamchatski),
				'generic' => q(heure de Petropavlovsk-Kamchatski),
				'standard' => q(heure normale de Petropavlovsk-Kamchatski),
			},
		},
		'Korea' => {
			long => {
				'daylight' => q(heure avancée de Corée),
				'generic' => q(heure de la Corée),
				'standard' => q(heure normale de la Corée),
			},
		},
		'Krasnoyarsk' => {
			long => {
				'daylight' => q(heure avancée de Krasnoïarsk),
				'generic' => q(heure de Krasnoïarsk),
				'standard' => q(heure normale de Krasnoïarsk),
			},
		},
		'Lord_Howe' => {
			long => {
				'daylight' => q(heure avancée de Lord Howe),
				'generic' => q(heure de Lord Howe),
				'standard' => q(heure normale de Lord Howe),
			},
		},
		'Macau' => {
			long => {
				'daylight' => q(heure avancée de Macao),
				'generic' => q(heure de Macao),
				'standard' => q(heure normale de Macao),
			},
		},
		'Magadan' => {
			long => {
				'daylight' => q(heure avancée de Magadan),
				'generic' => q(heure de Magadan),
				'standard' => q(heure normale de Magadan),
			},
		},
		'Mauritius' => {
			long => {
				'daylight' => q(heure avancée de Maurice),
				'generic' => q(heure de Maurice),
				'standard' => q(heure normale de Maurice),
			},
		},
		'Mexico_Northwest' => {
			long => {
				'daylight' => q(heure avancée du Nord-Ouest du Mexique),
				'generic' => q(heure du Nord-Ouest du Mexique),
				'standard' => q(heure normale du Nord-Ouest du Mexique),
			},
		},
		'Mexico_Pacific' => {
			long => {
				'daylight' => q(heure avancée du Pacifique mexicain),
				'generic' => q(heure du Pacifique mexicain),
				'standard' => q(heure normale du Pacifique mexicain),
			},
		},
		'Mongolia' => {
			long => {
				'daylight' => q(heure avancée d’Oulan-Bator),
				'generic' => q(heure d’Oulan-Bator),
				'standard' => q(heure normale d’Oulan-Bator),
			},
		},
		'Moscow' => {
			long => {
				'daylight' => q(heure avancée de Moscou),
				'generic' => q(heure de Moscou),
				'standard' => q(heure normale de Moscou),
			},
		},
		'New_Caledonia' => {
			long => {
				'daylight' => q(heure avancée de Nouvelle-Calédonie),
				'generic' => q(heure de la Nouvelle-Calédonie),
				'standard' => q(heure normale de la Nouvelle-Calédonie),
			},
		},
		'New_Zealand' => {
			long => {
				'daylight' => q(heure avancée de la Nouvelle-Zélande),
				'generic' => q(heure de la Nouvelle-Zélande),
				'standard' => q(heure normale de la Nouvelle-Zélande),
			},
		},
		'Newfoundland' => {
			long => {
				'daylight' => q(heure avancée de Terre-Neuve),
				'generic' => q(heure de Terre-Neuve),
				'standard' => q(heure normale de Terre-Neuve),
			},
			short => {
				'daylight' => q(HAT),
				'generic' => q(HT),
				'standard' => q(HNT),
			},
		},
		'Noronha' => {
			long => {
				'daylight' => q(heure avancée de Fernando de Noronha),
				'generic' => q(heure de Fernando de Noronha),
				'standard' => q(heure normale de Fernando de Noronha),
			},
		},
		'Novosibirsk' => {
			long => {
				'daylight' => q(heure avancée de Novossibirsk),
				'generic' => q(heure de Novossibirsk),
				'standard' => q(heure normale de Novossibirsk),
			},
		},
		'Omsk' => {
			long => {
				'daylight' => q(heure avancée de Omsk),
				'generic' => q(heure de Omsk),
				'standard' => q(heure normale de Omsk),
			},
		},
		'Pacific/Pitcairn' => {
			exemplarCity => q#Île Pitcairn#,
		},
		'Pacific/Wallis' => {
			exemplarCity => q#Uvéa#,
		},
		'Pakistan' => {
			long => {
				'daylight' => q(heure avancée du Pakistan),
				'generic' => q(heure du Pakistan),
				'standard' => q(heure normale du Pakistan),
			},
		},
		'Paraguay' => {
			long => {
				'daylight' => q(heure avancée du Paraguay),
				'generic' => q(heure du Paraguay),
				'standard' => q(heure normale du Paraguay),
			},
		},
		'Peru' => {
			long => {
				'daylight' => q(heure avancée du Pérou),
				'generic' => q(heure du Pérou),
				'standard' => q(heure normale du Pérou),
			},
		},
		'Philippines' => {
			long => {
				'daylight' => q(heure avancée des Philippines),
				'generic' => q(heure des Philippines),
				'standard' => q(heure normale des Philippines),
			},
		},
		'Pierre_Miquelon' => {
			long => {
				'daylight' => q(heure avancée de Saint-Pierre-et-Miquelon),
				'generic' => q(heure de Saint-Pierre-et-Miquelon),
				'standard' => q(heure normale de Saint-Pierre-et-Miquelon),
			},
		},
		'Sakhalin' => {
			long => {
				'daylight' => q(heure avancée de Sakhaline),
				'generic' => q(heure de Sakhaline),
				'standard' => q(heure normale de Sakhaline),
			},
		},
		'Samoa' => {
			long => {
				'daylight' => q(heure avancée des Samoa),
				'generic' => q(heure des Samoa),
				'standard' => q(heure normale des Samoa),
			},
		},
		'Taipei' => {
			long => {
				'daylight' => q(heure avancée de Taipei),
				'generic' => q(heure de Taipei),
				'standard' => q(heure normale de Taipei),
			},
		},
		'Tonga' => {
			long => {
				'daylight' => q(heure avancée de Tonga),
				'generic' => q(heure des Tonga),
				'standard' => q(heure normale des Tonga),
			},
		},
		'Turkmenistan' => {
			long => {
				'daylight' => q(heure avancée du Turkménistan),
				'generic' => q(heure du Turkménistan),
				'standard' => q(heure normale du Turkménistan),
			},
		},
		'Uruguay' => {
			long => {
				'daylight' => q(heure avancée de l’Uruguay),
				'generic' => q(heure de l’Uruguay),
				'standard' => q(heure normale de l’Uruguay),
			},
		},
		'Uzbekistan' => {
			long => {
				'daylight' => q(heure avancée de l’Ouzbékistan),
				'generic' => q(heure de l’Ouzbékistan),
				'standard' => q(heure normale de l’Ouzbékistan),
			},
		},
		'Vanuatu' => {
			long => {
				'daylight' => q(heure avancée de Vanuatu),
				'generic' => q(heure du Vanuatu),
				'standard' => q(heure normale du Vanuatu),
			},
		},
		'Vladivostok' => {
			long => {
				'daylight' => q(heure avancée de Vladivostok),
				'generic' => q(heure de Vladivostok),
				'standard' => q(heure normale de Vladivostok),
			},
		},
		'Volgograd' => {
			long => {
				'daylight' => q(heure avancée de Volgograd),
				'generic' => q(heure de Volgograd),
				'standard' => q(heure normale de Volgograd),
			},
		},
		'Yakutsk' => {
			long => {
				'daylight' => q(heure avancée de Iakoutsk),
				'generic' => q(heure de Iakoutsk),
				'standard' => q(heure normale de Iakoutsk),
			},
		},
		'Yekaterinburg' => {
			long => {
				'daylight' => q(heure avancée d’Ekaterinbourg),
				'generic' => q(heure d’Ekaterinbourg),
				'standard' => q(heure normale d’Ekaterinbourg),
			},
		},
	 } }
);
no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
