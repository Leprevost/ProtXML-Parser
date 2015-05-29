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

		},
		pretty_print => 'indented',
	);

	$parser->parsefile($file);

	#from globals to object

	return $self->protxmlfile;
}

1;
