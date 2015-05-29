package ProtXML::ProteinSummary;

use 5.010;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

has 'xmlns'	=>	(
	is			=>	'rw',
	isa			=>	'Str	',
	default	=>	'',
	);

has 'xmlns_xsi'	=>	(
	is			=>	'rw',
	isa			=>	'Str',
	default	=>	'',
	);

has 'xmlns_schemaLocation'	=>	(
	is			=>	'rw',
	isa			=>	'Str',
	default	=>	'',
	);

has 'summary_xml'	=>	(
	is			=>	'rw',
	isa			=>	'Str',
	default	=>	'',
	);

has 'reference_database'	=>	(
	is			=>	'rw',
	isa			=>	'Str',
	default	=>	'',
	);

has 'residue_substitution_list'	=>	(
	is			=>	'rw',
	isa			=>	'Str	',
	default	=>	'',
	);

has 'source_files'	=>	(
	is			=>	'rw',
	isa			=>	'Str',
	default	=>	'',
	);

has 'source_files_alt'	=>	(
	is			=>	'rw',
	isa			=>	'Str',
	default	=>	'',
	);

has 'min_peptide_probability'	=>	(
	is			=>	'rw',
	isa			=>	'Num',
	default	=>	0,
	);

has 'min_peptide_weight'	=>	(
	is			=>	'rw',
	isa			=>	'Num',
	default	=>	0,
	);

has 'num_predicted_correct_prots'	=>	(
	is			=>	'rw',
	isa			=>	'Num',
	default	=>	0,
	);

has 'num_input_1_spectra'	=>	(
	is			=>	'rw',
	isa			=>	'Int',
	default	=>	0,
	);

has 'num_input_2_spectra'	=>	(
	is			=>	'rw',
	isa			=>	'Int',
	default	=>	0,
	);

has 'num_input_3_spectra'	=>	(
	is			=>	'rw',
	isa			=>	'Int',
	default	=>	0,
	);

has 'num_input_4_spectra'	=>	(
	is			=>	'rw',
	isa			=>	'Int',
	default	=>	0,
	);

has 'num_input_5_spectra'	=>	(
	is			=>	'rw',
	isa			=>	'Int',
	default	=>	0,
	);

has 'initial_min_peptide_prob'	=>	(
	is			=>	'rw',
	isa			=>	'Int',
	default	=>	0,
	);

has 'total_no_spectrum_ids'	=>	(
	is			=>	'rw',
	isa			=>	'Int',
	default	=>	0,
	);

has 'sample_enzyme'	=>	(
	is			=>	'rw',
	isa			=>	'Str',
	default	=>	'',
	);


1;
