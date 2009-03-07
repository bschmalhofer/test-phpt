use Test::Builder::Tester tests => 1;
use File::Spec ();
use Test::Phpt;

my @test_cases = (
    {
        fn             => 'simple_a.phpt',
        is_successfull => 1,
    },
    {
        fn             => 'simple_b.phpt',
        is_successfull => 0,
    },
);
my $cnt = 0;
foreach (@test_cases) {
    $cnt++;
    my $expected = $_->{is_successfull} ? 'ok' : 'not ok';
    my $phpt_path = File::Spec->catfile( 't', $_->{fn} );
    test_out("$expected $cnt - $phpt_path");
    test_fail(+1) unless $_->{is_successfull};
    phpt_file_ok($phpt_path);
}
test_test("two files");
