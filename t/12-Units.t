#!/usr/bin/perl
# Do not normalise this test file. It has deliberately unnormalised characters in it.
use v5.10;
use strict;
use warnings;
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Test::More tests => 290;
use Test::Exception;

use ok 'Locale::CLDR';

my $locale = Locale::CLDR->new('fr_FR');

is($locale->unit(1, 'acre', 'narrow'), '1ac', 'French narrow 1 acre');
is($locale->unit(2, 'acre', 'narrow'), '2ac', 'French narrow 2 acres');
is($locale->unit(1, 'acre', 'short'), '1 ac', 'French short 1 acre');
is($locale->unit(2, 'acre', 'short'), '2 ac', 'French short 2 acres');
is($locale->unit(1, 'acre'), '1 acre anglo-saxonne', 'French long 1 acre');
is($locale->unit(2, 'acre'), '2 acres anglo-saxonnes', 'French long 2 acres');
is($locale->unit(1, 'arc-minute', 'narrow'), '1′', 'French narrow 1 minute');
is($locale->unit(2, 'arc-minute', 'narrow'), '2′', 'French narrow 2 minutes');
is($locale->unit(1, 'arc-minute', 'short'), '1′', 'French short 1 arc minute');
is($locale->unit(2, 'arc-minute', 'short'), '2′', 'French short 2 arc minutes');
is($locale->unit(1, 'arc-minute'), '1 minute d’arc', 'French long 1 arc minute');
is($locale->unit(2, 'arc-minute'), '2 minutes d’arc', 'French long 2 arc minutes');
is($locale->unit(1, 'arc-second', 'narrow'), '1″', 'French narrow 1 second');
is($locale->unit(2, 'arc-second', 'narrow'), '2″', 'French narrow 2 seconds');
is($locale->unit(1, 'arc-second', 'short'), '1″', 'French short 1 arc second');
is($locale->unit(2, 'arc-second', 'short'), '2″', 'French short 2 arc seconds');
is($locale->unit(1, 'arc-second'), '1 seconde d’angle', 'French long 1 arc second');
is($locale->unit(2, 'arc-second'), '2 secondes d’angle', 'French long 2 arc seconds');
is($locale->unit(1, 'celsius', 'narrow'), '1°', 'French narrow 1 degree Celsius');
is($locale->unit(2, 'celsius', 'narrow'), '2°', 'French narrow 2 degrees Celsius');
is($locale->unit(1, 'celsius', 'short'), '1 °C', 'French short 1 degree Celsius');
is($locale->unit(2, 'celsius', 'short'), '2 °C', 'French short 2 degrees Celsius');
is($locale->unit(1, 'celsius'), '1 degré Celsius', 'French long 1 degree Celsius');
is($locale->unit(2, 'celsius'), '2 degrés Celsius', 'French long 2 degrees Celsius');
is($locale->unit(1, 'centimeter', 'narrow'), '1cm', 'French narrow 1 centimetre');
is($locale->unit(2, 'centimeter', 'narrow'), '2cm', 'French narrow 2 centimetres');
is($locale->unit(1, 'centimeter', 'short'), '1 cm', 'French short 1 centimetre');
is($locale->unit(2, 'centimeter', 'short'), '2 cm', 'French short 2 centimetres');
is($locale->unit(1, 'centimeter'), '1 centimètre', 'French long 1 centimetre');
is($locale->unit(2, 'centimeter'), '2 centimètres', 'French long 2 centimetres');
is($locale->unit(1, 'cubic-kilometer', 'narrow'), '1km³', 'French narrow 1 cubic kilometre');
is($locale->unit(2, 'cubic-kilometer', 'narrow'), '2km³', 'French narrow 2 cubic kilometres');
is($locale->unit(1, 'cubic-kilometer', 'short'), '1 km³', 'French short 1 cubic kilometre');
is($locale->unit(2, 'cubic-kilometer', 'short'), '2 km³', 'French short 2 cubic kilometres');
is($locale->unit(1, 'cubic-kilometer'), '1 kilomètre cube', 'French long 1 cubic kilometre');
is($locale->unit(2, 'cubic-kilometer'), '2 kilomètres cubes', 'French long 2 cubic kilometres');
is($locale->unit(1, 'cubic-mile', 'narrow'), '1mi³', 'French narrow 1 cubic mile');
is($locale->unit(2, 'cubic-mile', 'narrow'), '2mi³', 'French narrow 2 cubic miles');
is($locale->unit(1, 'cubic-mile', 'short'), '1 mi³', 'French short 1 cubic mile');
is($locale->unit(2, 'cubic-mile', 'short'), '2 mi³', 'French short 2 cubic miles');
is($locale->unit(1, 'cubic-mile'), '1 mille anglais cube', 'French long 1 cubic mile');
is($locale->unit(2, 'cubic-mile'), '2 milles anglais cubes', 'French long 2 cubic miles');
is($locale->unit(1, 'day', 'narrow'), '1j', 'French narrow 1 day');
is($locale->unit(2, 'day', 'narrow'), '2j', 'French narrow 2 days');
is($locale->unit(1, 'day', 'short'), '1 j', 'French short 1 day');
is($locale->unit(2, 'day', 'short'), '2 j', 'French short 2 days');
is($locale->unit(1, 'day'), '1 jour', 'French long 1 day');
is($locale->unit(2, 'day'), '2 jours', 'French long 2 days');
is($locale->unit(1, 'degree', 'narrow'), '1°', 'French narrow 1 degree');
is($locale->unit(2, 'degree', 'narrow'), '2°', 'French narrow 2 degrees');
is($locale->unit(1, 'degree', 'short'), '1°', 'French short 1 degree');
is($locale->unit(2, 'degree', 'short'), '2°', 'French short 2 degree');
is($locale->unit(1, 'degree'), '1 degré', 'French long 1 degree');
is($locale->unit(2, 'degree'), '2 degrés', 'French long 2 degrees');
is($locale->unit(1, 'fahrenheit', 'narrow'), '1°F', 'French narrow 1 degree Fahrenheit');
is($locale->unit(2, 'fahrenheit', 'narrow'), '2°F', 'French narrow 2 degrees Fahrenheit');
is($locale->unit(1, 'fahrenheit', 'short'), '1 °F', 'French short 1 degree Fahrenheit');
is($locale->unit(2, 'fahrenheit', 'short'), '2 °F', 'French short 2 degrees Fahrenheit');
is($locale->unit(1, 'fahrenheit'), '1 degré Fahrenheit', 'French long 1 degree Fahrenheit');
is($locale->unit(2, 'fahrenheit'), '2 degrés Fahrenheit', 'French long 2 degrees Fahrenheit');
is($locale->unit(1, 'foot', 'narrow'), '1′', 'French narrow 1 foot');
is($locale->unit(2, 'foot', 'narrow'), '2′', 'French narrow 2 feet');
is($locale->unit(1, 'foot', 'short'), '1 ft', 'French short 1 foot');
is($locale->unit(2, 'foot', 'short'), '2 ft', 'French short 2 feet');
is($locale->unit(1, 'foot'), '1 pied', 'French long 1 foot');
is($locale->unit(2, 'foot'), '2 pieds', 'French long 2 feet');
is($locale->unit(1, 'g-force', 'narrow'), '1G', 'French narrow 1 g-force');
is($locale->unit(2, 'g-force', 'narrow'), '2G', 'French narrow 2 g-force');
is($locale->unit(1, 'g-force', 'short'), '1 G', 'French short 1 g-force');
is($locale->unit(2, 'g-force', 'short'), '2 G', 'French short 2 g-force');
is($locale->unit(1, 'g-force'), '1 fois la gravitation terrestre', 'French long 1 g-force');
is($locale->unit(2, 'g-force'), '2 fois la gravitation terrestre', 'French long 2 g-force');
is($locale->unit(1, 'gram', 'narrow'), '1g', 'French narrow 1 gram');
is($locale->unit(2, 'gram', 'narrow'), '2g', 'French narrow 2 grams');
is($locale->unit(1, 'gram', 'short'), '1 g', 'French short 1 gram');
is($locale->unit(2, 'gram', 'short'), '2 g', 'French short 2 grams');
is($locale->unit(1, 'gram'), '1 gramme', 'French long 1 gram');
is($locale->unit(2, 'gram'), '2 grammes', 'French long 2 grams');
is($locale->unit(1, 'hectare', 'narrow'), '1ha', 'French narrow 1 hectare');
is($locale->unit(2, 'hectare', 'narrow'), '2ha', 'French narrow 2 hectares');
is($locale->unit(1, 'hectare', 'short'), '1 ha', 'French short 1 hectare');
is($locale->unit(2, 'hectare', 'short'), '2 ha', 'French short 2 hectares');
is($locale->unit(1, 'hectare'), '1 hectare', 'French long 1 hectare');
is($locale->unit(2, 'hectare'), '2 hectares', 'French long 2 hectares');
is($locale->unit(1, 'hectopascal', 'narrow'), '1hPa', 'French narrow 1 hectopascal');
is($locale->unit(2, 'hectopascal', 'narrow'), '2hPa', 'French narrow 2 hectopascals');
is($locale->unit(1, 'hectopascal', 'short'), '1 hPa', 'French short 1 hectopascal');
is($locale->unit(2, 'hectopascal', 'short'), '2 hPa', 'French short 2 hectopascals');
is($locale->unit(1, 'hectopascal'), '1 hectopascal', 'French long 1 hectopascal');
is($locale->unit(2, 'hectopascal'), '2 hectopascals', 'French long 2 hectopascals');
is($locale->unit(1, 'horsepower', 'narrow'), '1ch', 'French narrow 1 horsepower');
is($locale->unit(2, 'horsepower', 'narrow'), '2ch', 'French narrow 2 horsepower');
is($locale->unit(1, 'horsepower', 'short'), '1 ch', 'French short 1 horsepower');
is($locale->unit(2, 'horsepower', 'short'), '2 ch', 'French short 2 horsepower');
is($locale->unit(1, 'horsepower'), '1 cheval-vapeur', 'French long 1 horsepower');
is($locale->unit(2, 'horsepower'), '2 chevaux-vapeur', 'French long 2 horsepower');
is($locale->unit(1, 'hour', 'narrow'), '1h', 'French narrow 1 hour');
is($locale->unit(2, 'hour', 'narrow'), '2h', 'French narrow 2 hours');
is($locale->unit(1, 'hour', 'short'), '1 h', 'French short 1 hour');
is($locale->unit(2, 'hour', 'short'), '2 h', 'French short 2 hours');
is($locale->unit(1, 'hour'), '1 heure', 'French long 1 hour');
is($locale->unit(2, 'hour'), '2 heures', 'French long 2 hours');
is($locale->unit(1, 'inch', 'narrow'), '1″', 'French narrow 1 inch');
is($locale->unit(2, 'inch', 'narrow'), '2″', 'French narrow 2 inches');
is($locale->unit(1, 'inch', 'short'), '1 po', 'French short 1 inch');
is($locale->unit(2, 'inch', 'short'), '2 po', 'French short 2 inches');
is($locale->unit(1, 'inch'), '1 pouce', 'French long 1 inch');
is($locale->unit(2, 'inch'), '2 pouces', 'French long 2 inches');
is($locale->unit(1, 'inch-hg', 'narrow'), '1inHg', 'French narrow 1 inch of mercury');
is($locale->unit(2, 'inch-hg', 'narrow'), '2inHg', 'French narrow 2 inches of mercury');
is($locale->unit(1, 'inch-hg', 'short'), '1 inHg', 'French short 1 inch of mercury');
is($locale->unit(2, 'inch-hg', 'short'), '2 inHg', 'French short 2 inches of mercury');
is($locale->unit(1, 'inch-hg'), '1 pouce de mercure', 'French long 1 inch of mercury');
is($locale->unit(2, 'inch-hg'), '2 pouces de mercure', 'French long 2 inches of mercury');
is($locale->unit(1, 'kilogram', 'narrow'), '1kg', 'French narrow 1 kilogram');
is($locale->unit(2, 'kilogram', 'narrow'), '2kg', 'French narrow 2 kilograms');
is($locale->unit(1, 'kilogram', 'short'), '1 kg', 'French short 1 kilogram');
is($locale->unit(2, 'kilogram', 'short'), '2 kg', 'French short 2 kilograms');
is($locale->unit(1, 'kilogram'), '1 kilogramme', 'French long 1 kilogram');
is($locale->unit(2, 'kilogram'), '2 kilogrammes', 'French long 2 kilograms');
is($locale->unit(1, 'kilometer', 'narrow'), '1km', 'French narrow 1 kilometre');
is($locale->unit(2, 'kilometer', 'narrow'), '2km', 'French narrow 2 kilometres');
is($locale->unit(1, 'kilometer', 'short'), '1 km', 'French short 1 kilometre');
is($locale->unit(2, 'kilometer', 'short'), '2 km', 'French short 2 kilometres');
is($locale->unit(1, 'kilometer'), '1 kilomètre', 'French long 1 kilometre');
is($locale->unit(2, 'kilometer'), '2 kilomètres', 'French long 2 kilometres');
is($locale->unit(1, 'kilometer-per-hour', 'narrow'), '1km/h', 'French narrow 1 kilometre per hour');
is($locale->unit(2, 'kilometer-per-hour', 'narrow'), '2km/h', 'French narrow 2 kilometres per hour');
is($locale->unit(1, 'kilometer-per-hour', 'short'), '1 km/h', 'French short 1 kilometre per hour');
is($locale->unit(2, 'kilometer-per-hour', 'short'), '2 km/h', 'French short 2 kilometres per hour');
is($locale->unit(1, 'kilometer-per-hour'), '1 kilomètre par heure', 'French long 1 kilometre per hour');
is($locale->unit(2, 'kilometer-per-hour'), '2 kilomètres par heure', 'French long 2 kilometres per hour');
is($locale->unit(1, 'kilowatt', 'narrow'), '1kW', 'French narrow 1 kilowatt');
is($locale->unit(2, 'kilowatt', 'narrow'), '2kW', 'French narrow 2 kilowatts');
is($locale->unit(1, 'kilowatt', 'short'), '1 kW', 'French short 1 kilowatt');
is($locale->unit(2, 'kilowatt', 'short'), '2 kW', 'French short 2 kilowatts');
is($locale->unit(1, 'kilowatt'), '1 kilowatt', 'French long 1 kilowatt');
is($locale->unit(2, 'kilowatt'), '2 kilowatts', 'French long 2 kilowatts');
is($locale->unit(1, 'light-year', 'narrow'), '1a.l.', 'French narrow 1 light year');
is($locale->unit(2, 'light-year', 'narrow'), '2a.l.', 'French narrow 2 light years');
is($locale->unit(1, 'light-year', 'short'), '1 a.l.', 'French short 1 light year');
is($locale->unit(2, 'light-year', 'short'), '2 a.l.', 'French short 2 light years');
is($locale->unit(1, 'light-year'), '1 année-lumière', 'French long 1 light year');
is($locale->unit(2, 'light-year'), '2 années-lumière', 'French long 2 light years');
is($locale->unit(1, 'liter', 'narrow'), '1L', 'French narrow 1 litre');
is($locale->unit(2, 'liter', 'narrow'), '2L', 'French narrow 2 litres');
is($locale->unit(1, 'liter', 'short'), '1 L', 'French short 1 litre');
is($locale->unit(2, 'liter', 'short'), '2 L', 'French short 2 litres');
is($locale->unit(1, 'liter'), '1 litre', 'French long 1 litre');
is($locale->unit(2, 'liter'), '2 litres', 'French long 2 litres');
is($locale->unit(1, 'meter', 'narrow'), '1m', 'French narrow 1 meter');
is($locale->unit(2, 'meter', 'narrow'), '2m', 'French narrow 2 meters');
is($locale->unit(1, 'meter', 'short'), '1 m', 'French short 1 meter');
is($locale->unit(2, 'meter', 'short'), '2 m', 'French short 2 meters');
is($locale->unit(1, 'meter'), '1 mètre', 'French long 1 meter');
is($locale->unit(2, 'meter'), '2 mètres', 'French long 2 meters');
is($locale->unit(1, 'meter-per-second', 'narrow'), '1m/s', 'French narrow 1 meter per second');
is($locale->unit(2, 'meter-per-second', 'narrow'), '2m/s', 'French narrow 2 meters per second');
is($locale->unit(1, 'meter-per-second', 'short'), '1 m/s', 'French short 1 meter per second');
is($locale->unit(2, 'meter-per-second', 'short'), '2 m/s', 'French short 2 meters per second');
is($locale->unit(1, 'meter-per-second'), '1 mètre par seconde', 'French long 1 meter per second');
is($locale->unit(2, 'meter-per-second'), '2 mètres par seconde', 'French long 2 meters per second');
is($locale->unit(1, 'mile', 'narrow'), '1mi', 'French narrow 1 mile');
is($locale->unit(2, 'mile', 'narrow'), '2mi', 'French narrow 2 miles');
is($locale->unit(1, 'mile', 'short'), '1 mi', 'French short 1 mile');
is($locale->unit(2, 'mile', 'short'), '2 mi', 'French short 2 miles');
is($locale->unit(1, 'mile'), '1 mille anglais', 'French long 1 mile');
is($locale->unit(2, 'mile'), '2 milles anglais', 'French long 2 miles');
is($locale->unit(1, 'mile-per-hour', 'narrow'), '1mi/h', 'French narrow 1 mile per hour');
is($locale->unit(2, 'mile-per-hour', 'narrow'), '2mi/h', 'French narrow 2 miles per hour');
is($locale->unit(1, 'mile-per-hour', 'short'), '1 mi/h', 'French short 1 mile per hour');
is($locale->unit(2, 'mile-per-hour', 'short'), '2 mi/h', 'French short 2 miles per hour');
is($locale->unit(1, 'mile-per-hour'), '1 mille anglais par heure', 'French long 1 mile per hour');
is($locale->unit(2, 'mile-per-hour'), '2 milles anglais par heure', 'French long 2 miles per hour');
is($locale->unit(1, 'millibar', 'narrow'), '1mbar', 'French narrow 1 millibar');
is($locale->unit(2, 'millibar', 'narrow'), '2mbar', 'French narrow 2 millibars');
is($locale->unit(1, 'millibar', 'short'), '1 mbar', 'French short 1 millibar');
is($locale->unit(2, 'millibar', 'short'), '2 mbar', 'French short 2 millibars');
is($locale->unit(1, 'millibar'), '1 millibar', 'French long 1 millibar');
is($locale->unit(2, 'millibar'), '2 millibars', 'French long 2 millibars');
is($locale->unit(1, 'millimeter', 'narrow'), '1mm', 'French narrow 1 millimetre');
is($locale->unit(2, 'millimeter', 'narrow'), '2mm', 'French narrow 2 millimetres');
is($locale->unit(1, 'millimeter', 'short'), '1 mm', 'French short 1 millimetre');
is($locale->unit(2, 'millimeter', 'short'), '2 mm', 'French short 2 millimetres');
is($locale->unit(1, 'millimeter'), '1 millimètre', 'French long 1 millimetre');
is($locale->unit(2, 'millimeter'), '2 millimètres', 'French long 2 millimetres');
is($locale->unit(1, 'millisecond', 'narrow'), '1ms', 'French narrow 1 millisecond');
is($locale->unit(2, 'millisecond', 'narrow'), '2ms', 'French narrow 2 milliseconds');
is($locale->unit(1, 'millisecond', 'short'), '1 ms', 'French short 1 millisecond');
is($locale->unit(2, 'millisecond', 'short'), '2 ms', 'French short 2 milliseconds');
is($locale->unit(1, 'millisecond'), '1 milliseconde', 'French long 1 millisecond');
is($locale->unit(2, 'millisecond'), '2 millisecondes', 'French long 2 milliseconds');
is($locale->unit(1, 'minute', 'narrow'), '1m', 'French narrow 1 minute');
is($locale->unit(2, 'minute', 'narrow'), '2m', 'French narrow 2 minutes');
is($locale->unit(1, 'minute', 'short'), '1 min', 'French short 1 minute');
is($locale->unit(2, 'minute', 'short'), '2 min', 'French short 2 minutes');
is($locale->unit(1, 'minute'), '1 minute', 'French long 1 minute');
is($locale->unit(2, 'minute'), '2 minutes', 'French long 2 minutes');
is($locale->unit(1, 'month', 'narrow'), '1m', 'French narrow 1 month');
is($locale->unit(2, 'month', 'narrow'), '2m', 'French narrow 2 months');
is($locale->unit(1, 'month', 'short'), '1 m', 'French short 1 month');
is($locale->unit(2, 'month', 'short'), '2 m', 'French short 2 months');
is($locale->unit(1, 'month'), '1 mois', 'French long 1 month');
is($locale->unit(2, 'month'), '2 mois', 'French long 2 months');
is($locale->unit(1, 'ounce', 'narrow'), '1oz', 'French narrow 1 ounce');
is($locale->unit(2, 'ounce', 'narrow'), '2oz', 'French narrow 2 ounces');
is($locale->unit(1, 'ounce', 'short'), '1 oz', 'French short 1 ounce');
is($locale->unit(2, 'ounce', 'short'), '2 oz', 'French short 2 ounces');
is($locale->unit(1, 'ounce'), '1 once', 'French long 1 once');
is($locale->unit(2, 'ounce'), '2 onces', 'French long 2 onces');
is($locale->unit(1, 'millimeter-per-second', 'narrow'), '1mm/s', 'French narrow 1 millimetre per second');
is($locale->unit(2, 'millimeter-per-second', 'narrow'), '2mm/s', 'French narrow 2 millimetres per second');
is($locale->unit(1, 'millimeter-per-second', 'short'), '1 mm/s', 'French short 1 millimetre per second');
is($locale->unit(2, 'millimeter-per-second', 'short'), '2 mm/s', 'French short 2 millimetres per second');
is($locale->unit(1, 'millimeter-per-second'), '1 millimètre par seconde', 'French long 1 millimetre per second');
is($locale->unit(2, 'millimeter-per-second'), '2 millimètres par seconde', 'French long 2 millimetres per second');
is($locale->unit(1, 'picometer', 'narrow'), '1pm', 'French narrow 1 picometre');
is($locale->unit(2, 'picometer', 'narrow'), '2pm', 'French narrow 2 picometres');
is($locale->unit(1, 'picometer', 'short'), '1 pm', 'French short 1 picometre');
is($locale->unit(2, 'picometer', 'short'), '2 pm', 'French short 2 picometres');
is($locale->unit(1, 'picometer'), '1 picomètre', 'French long 1 picometre');
is($locale->unit(2, 'picometer'), '2 picomètres', 'French long 2 picometres');
is($locale->unit(1, 'pound', 'narrow'), '1lb', 'French narrow 1 pound');
is($locale->unit(2, 'pound', 'narrow'), '2lb', 'French narrow 2 pounds');
is($locale->unit(1, 'pound', 'short'), '1 lb', 'French short 1 pound');
is($locale->unit(2, 'pound', 'short'), '2 lb', 'French short 2 pounds');
is($locale->unit(1, 'pound'), '1 livre', 'French long 1 pound');
is($locale->unit(2, 'pound'), '2 livres', 'French long 2 pounds');
is($locale->unit(1, 'second', 'narrow'), '1s', 'French narrow 1 second');
is($locale->unit(2, 'second', 'narrow'), '2s', 'French narrow 2 seconds');
is($locale->unit(1, 'second', 'short'), '1 s', 'French short 1 second');
is($locale->unit(2, 'second', 'short'), '2 s', 'French short 2 seconds');
is($locale->unit(1, 'second'), '1 seconde', 'French long 1 second');
is($locale->unit(2, 'second'), '2 secondes', 'French long 2 seconds');
is($locale->unit(1, 'square-foot', 'narrow'), '1pi²', 'French narrow 1 square foot');
is($locale->unit(2, 'square-foot', 'narrow'), '2pi²', 'French narrow 2 square feet');
is($locale->unit(1, 'square-foot', 'short'), '1 pi²', 'French short 1 square foot');
is($locale->unit(2, 'square-foot', 'short'), '2 pi²', 'French short 2 square feet');
is($locale->unit(1, 'square-foot'), '1 pied carré', 'French long 1 square foot');
is($locale->unit(2, 'square-foot'), '2 pieds carrés', 'French long 2 square feet');
is($locale->unit(1, 'square-kilometer', 'narrow'), '1km²', 'French narrow 1 square kilometre');
is($locale->unit(2, 'square-kilometer', 'narrow'), '2km²', 'French narrow 2 square kilometres');
is($locale->unit(1, 'square-kilometer', 'short'), '1 km²', 'French short 1 square kilometre');
is($locale->unit(2, 'square-kilometer', 'short'), '2 km²', 'French short 2 square kilometres');
is($locale->unit(1, 'square-kilometer'), '1 kilomètre carré', 'French long 1 square kilometre');
is($locale->unit(2, 'square-kilometer'), '2 kilomètres carrés', 'French long 2 square kilometres');
is($locale->unit(1, 'square-meter', 'narrow'), '1m²', 'French narrow 1 square meter');
is($locale->unit(2, 'square-meter', 'narrow'), '2m²', 'French narrow 2 square meters');
is($locale->unit(1, 'square-meter', 'short'), '1 m²', 'French short 1 square meter');
is($locale->unit(2, 'square-meter', 'short'), '2 m²', 'French short 2 square metres');
is($locale->unit(1, 'square-meter'), '1 mètre carré', 'French long 1 square metre');
is($locale->unit(2, 'square-meter'), '2 mètres carrés', 'French long 2 square metres');
is($locale->unit(1, 'square-mile', 'narrow'), '1mi²', 'French narrow 1 square mile');
is($locale->unit(2, 'square-mile', 'narrow'), '2mi²', 'French narrow 2 square miles');
is($locale->unit(1, 'square-mile', 'short'), '1 mi²', 'French short 1 square mile');
is($locale->unit(2, 'square-mile', 'short'), '2 mi²', 'French short 2 square miles');
is($locale->unit(1, 'square-mile'), '1 mille anglais carré', 'French long 1 square mile');
is($locale->unit(2, 'square-mile'), '2 milles anglais carrés', 'French long 2 square miles');
is($locale->unit(1, 'watt', 'narrow'), '1W', 'French narrow 1 watt');
is($locale->unit(2, 'watt', 'narrow'), '2W', 'French narrow 2 watts');
is($locale->unit(1, 'watt', 'short'), '1 W', 'French short 1 watt');
is($locale->unit(2, 'watt', 'short'), '2 W', 'French short 2 watts');
is($locale->unit(1, 'watt'), '1 watt', 'French long 1 watt');
is($locale->unit(2, 'watt'), '2 watts', 'French long 2 watts');
is($locale->unit(1, 'week', 'narrow'), '1sem', 'French narrow 1 week');
is($locale->unit(2, 'week', 'narrow'), '2sem', 'French narrow 2 weeks');
is($locale->unit(1, 'week', 'short'), '1 sem.', 'French short 1 week');
is($locale->unit(2, 'week', 'short'), '2 sem.', 'French short 2 weeks');
is($locale->unit(1, 'week'), '1 semaine', 'French long 1 week');
is($locale->unit(2, 'week'), '2 semaines', 'French long 2 weeks');
is($locale->unit(1, 'yard', 'narrow'), '1yd', 'French narrow 1 yard');
is($locale->unit(2, 'yard', 'narrow'), '2yd', 'French narrow 2 yards');
is($locale->unit(1, 'yard', 'short'), '1 yd', 'French short 1 yard');
is($locale->unit(2, 'yard', 'short'), '2 yd', 'French short 2 yards');
is($locale->unit(1, 'yard'), '1 yard', 'French long 1 yard');
is($locale->unit(2, 'yard'), '2 yards', 'French long 2 yards');
is($locale->unit(1, 'year', 'narrow'), '1a', 'French narrow 1 year');
is($locale->unit(2, 'year', 'narrow'), '2a', 'French narrow 2 years');
is($locale->unit(1, 'year', 'short'), '1 an', 'French short 1 year');
is($locale->unit(2, 'year', 'short'), '2 ans', 'French short 2 years');
is($locale->unit(1, 'year'), '1 an', 'French long 1 year');
is($locale->unit(2, 'year'), '2 ans', 'French long 2 years');
is($locale->duration_unit('hm', 1, 2), '1:02', 'French duration hour, minuet');
is($locale->duration_unit('hms', 1, 2, 3 ), '1:02:03', 'French duration hour, minuet, second');
is($locale->duration_unit('ms', 1, 2 ), '1:02', 'French duration minuet, second');
is($locale->is_yes('Oui'), 1, 'French is yes');
is($locale->is_yes('es'), 0, 'French is not yes');
is($locale->is_no('non'), 1, 'French is no');
is($locale->is_no('N&'), 0, 'French is not no');