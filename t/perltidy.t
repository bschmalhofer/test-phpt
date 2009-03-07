use File::Spec;
use Test::More;
use English qw(-no_match_vars);


if ( not $ENV{TEST_AUTHOR} ) {
    my $msg = 'Author test.  Set $ENV{TEST_AUTHOR} to a true value to run.';
    plan( skip_all => $msg );
}

eval { require Test::PerlTidy; };

if ($EVAL_ERROR) {
    my $msg = 'Test::PerlTidy required to check tidyness of code';
    plan( skip_all => $msg );
}

Test::PerlTidy->import();
run_tests();
