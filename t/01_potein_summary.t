#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;
use lib 'lib';
use ProtXML::Parser;

plan tests => 4;

my $p = ProtXML::Parser->new();

my $protxmlfile = $p->parse("t/sample.protxml");

cmp_ok( $protxmlfile->protein_summary->xmlns, 'eq', "http://regis-web.systemsbiology.net/protXML" );
cmp_ok( $protxmlfile->protein_summary->xmlns_xsi, 'eq', "http://www.w3.org/2001/XMLSchema-instance" );
cmp_ok( $protxmlfile->protein_summary->xmlns_schemaLocation, 'eq', "http://sashimi.sourceforge.net/schema_revision/protXML/protXML_v6.xsd" );
cmp_ok( $protxmlfile->protein_summary->summary_xml, 'eq', "/data/felipevl/testRunOfTPPPipeline/interact-UC6.prot.xml" );
