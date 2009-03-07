use Test::Builder::Tester tests => 1;
use File::Spec ();
use Test::Phpt;

my @phpt_fns = qw( simple.phpt );
foreach (@phpt_fns) {
    my $phpt_path = File::Spec->catfile( 't', $_ );
    test_out("ok 1 - $phpt_path");
    phpt_file_ok($phpt_path);
    test_test("$phpt_path reports success");
}
