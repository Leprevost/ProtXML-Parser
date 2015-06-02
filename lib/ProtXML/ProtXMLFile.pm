package ProtXML::ProtXMLFile;

use 5.010;
use strict;
use warnings;
use XML::Twig;
use Moose;
use namespace::autoclean;
use ProtXML::ProteinSummary;
use ProtXML::ProteinSummaryHeader;


has 'protein_summary' => (
	is	=>	'rw',
	isa	=>	'ProtXML::ProteinSummary',
	default => sub {
    	my $self = shift;
        return my $obj = ProtXML::ProteinSummary->new();
    	}
	);
	
	
has 'protein_summary_header' => (
	is	=>	'rw',
	isa	=>	'ProtXML::ProteinSummaryHeader',
	default => sub {
    	my $self = shift;
        return my $obj = ProtXML::ProteinSummaryHeader->new();
    	}
	);


sub get_protein_summary {
	my $self = shift;

	return $self->protein_summary;
}


sub get_protein_summary_header {
	my $self = shift;

	return $self->protein_summary_header;
}


  1;
