#!/usr/bin/perl

use warnings;
use strict;
use lib 'lib';
use ProtXML::Parser;

my $parser = ProtXML::Parser->new();

my $protxml = $parser->parse("t/sample.protxml");
