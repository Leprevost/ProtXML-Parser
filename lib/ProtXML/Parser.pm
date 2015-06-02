package ProtXML::Parser;

use 5.010;
use strict;
use warnings;
use XML::Twig;
use Moose;
use namespace::autoclean;
use ProtXML::ProtXMLFile;
use ProtXML::ProteinSummary;
use ProtXML::ProteinSummaryHeader;

our $VERSION = '0.01';

#globals
my $package;
my $global_file;


has 'protxmlfile' => (
	is	=>	'rw',
	isa	=>	'ProtXML::ProtXMLFile',
	default => sub {
    	my $self = shift;
        return my $obj = ProtXML::ProtXMLFile->new();
    	}
	);


sub parse {
	my $self = shift;
	my $file = shift;

	$package        = $self;
	$global_file	= $file;

	my $parser = XML::Twig->new(
		twig_handlers =>
		{

			protein_summary				=>	\&parse_protein_summary,
			protein_summary_header		=>	\&parse_protein_summary_header,

		},
		pretty_print => 'indented',
	);

	$parser->parsefile($file);

	#from globals to object

	return $self->protxmlfile;
}


sub parse_protein_summary {
	my ( $parser, $node ) = @_;

	my $ps = ProtXML::ProteinSummary->new();

	$ps->xmlns($node->{'att'}->{'xmlns'});
	$ps->xmlns_xsi($node->{'att'}->{'xmlns:xsi'});
	$ps->xmlns_schemaLocation($node->{'att'}->{'xsi:schemaLocation'});
	$ps->summary_xml($node->{'att'}->{'summary_xml'});

	$package->protxmlfile->protein_summary($ps);
}

sub parse_protein_summary_header {
	my ($parser, $node ) = @_;
	
	my $psh = ProtXML::ProteinSummaryHeader->new();
	
	$psh->reference_database($node->{'att'}->{'reference_database'});
	$psh->residue_substitution_list($node->{'att'}->{'residue_substitution_list'});
	$psh->source_files($node->{'att'}->{'source_files'});
	$psh->source_files_alt($node->{'att'}->{'source_files_alt'});
	$psh->min_peptide_probability($node->{'att'}->{'min_peptide_probability'});
	$psh->min_peptide_weight($node->{'att'}->{'min_peptide_weight'});
	$psh->num_predicted_correct_prots($node->{'att'}->{'num_predicted_correct_prots'});
	$psh->num_input_1_spectra($node->{'att'}->{'num_input_1_spectra'});
	$psh->num_input_2_spectra($node->{'att'}->{'num_input_2_spectra'});
	$psh->num_input_3_spectra($node->{'att'}->{'num_input_3_spectra'});
	$psh->num_input_4_spectra($node->{'att'}->{'num_input_4_spectra'});
	$psh->num_input_5_spectra($node->{'att'}->{'num_input_5_spectra'});
	$psh->initial_min_peptide_prob($node->{'att'}->{'initial_min_peptide_prob'});
	$psh->total_no_spectrum_ids($node->{'att'}->{'total_no_spectrum_ids'});
	$psh->sample_enzyme($node->{'att'}->{'sample_enzyme'});
	
	$package->protxmlfile->protein_summary_header($psh);

	
}
1;















