#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok('Test::Phpt');
}

diag("Testing Test::Phpt $Test::Phpt::VERSION, Perl $], $^X");
