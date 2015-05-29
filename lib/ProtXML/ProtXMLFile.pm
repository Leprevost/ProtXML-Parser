package ProtXML::ProtXMLFile;

use 5.010;
use strict;
use warnings;
use XML::Twig;
use Moose;
use namespace::autoclean;
use ProtXML::ProteinSummary;


has 'protein_summary' => (
	is	=>	'rw',
	isa	=>	'ProtXML::ProteinSummary',
	default => sub {
    	my $self = shift;
        return my $obj = ProtXML::ProteinSummary->new();
    	}
	);


sub get_protein_summary {
	my $self = shift;

	return $self->protein_summary;
}


  1;
