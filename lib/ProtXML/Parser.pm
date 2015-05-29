package ProtXML::Parser;

use 5.010;
use strict;
use warnings;
use XML::Twig;
use Moose;
use namespace::autoclean;
use ProtXML::ProtXMLFile;

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

	$package			= $self;
	$global_file	= $file;

	my $parser = XML::Twig->new(
		twig_handlers =>
		{

			protein_summary		=>	\&parse_protein_summary,

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

1;
