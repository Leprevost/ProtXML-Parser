use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'ProtXML::Parser',
    AUTHOR           => q{Felipe da Veiga Leprevost <leprevost@cpan.org>},
    VERSION_FROM     => 'lib/ProtXML/Parser.pm',
    ABSTRACT_FROM    => 'lib/ProtXML/Parser.pm',
    LICENSE          => 'perl_5',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.010,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },

    (! eval { ExtUtils::MakeMaker->VERSION(6.46) } ? () :
        (META_ADD => {
          resources => {
              homepage   => 'https://github.com/Leprevost/ProtXML-Parser',
                repository => 'https://github.com/Leprevost/ProtXML-Parser.git',
                bugtracker => 'https://rt.cpan.org/NoAuth/Bugs.html?Dist=ProtXML-Parser',
            },
        })
    ),

    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'ProtXML-Parser-*' },
);
