use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Test::Phpt',
    AUTHOR              => 'Bernhard Schmalhofer <Bernhard.Schmalhofer@gmx.de>',
    VERSION_FROM        => 'lib/Test/Phpt.pm',
    ABSTRACT_FROM       => 'lib/Test/Phpt.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Test-Phpt-*' },
);
