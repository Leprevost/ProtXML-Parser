#!/usr/bin/perl

use warnings;
use strict;
use lib 'lib';
use ProtXML::Parser;
use Data::Printer;

my $parser = ProtXML::Parser->new();

my $protxml = $parser->parse("t/sample.protxml");

#p $protxml;

#my $ps = $protxml->get_protein_summary;
#p $ps;

my $psh = $protxml->get_protein_summary_header;
p $psh;

#
