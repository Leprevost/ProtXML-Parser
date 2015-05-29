#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'ProtXML::Parser' ) || print "Bail out!\n";
}

diag( "Testing ProtXML::Parser $ProtXML::Parser::VERSION, Perl $], $^X" );
