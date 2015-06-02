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

cmp_ok( $protxmlfile->protein_summary_header->initial_min_peptide_prob, '==', "0.05" );
cmp_ok( $protxmlfile->protein_summary_header->reference_database, 'eq', "/tpp.data/fasta/refseq56.Hs_plusREV.fa" );
cmp_ok( $protxmlfile->protein_summary_header->sample_enzyme, 'eq', "trypsin" );
cmp_ok( $protxmlfile->protein_summary_header->total_no_spectrum_ids, '==', "1565.8" );
