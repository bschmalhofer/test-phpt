package Test::Phpt;

use warnings;
use strict;

=head1 NAME

Test::Phpt - Understanding the PHP build test format

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

    use Test::Phpt;

    phpt_file_ok('t/dummy.phpt');

=head1 EXPORT

phpt_file_ok() is exported.

=head1 DESCRIPTION

See L<http://qa.php.net/write-test.php>, L<http://qa.php.net/phpt_details.php>,
and L<http://www.perl.com/pub/a/2005/12/08/test_files.htm>.

=head1 FUNCTIONS

=cut

use base 'Exporter';
use base 'Test::Builder::Module';
my $CLASS = __PACKAGE__;

our @EXPORT = qw(phpt_file_ok);

=head2 phpt_file_ok

Testing a PHPT file.

=cut

sub phpt_file_ok {
    my ($phpt_fn) = @_;

    my $test = -e $phpt_fn;    # for now only check existence of file

    my $tb = $CLASS->builder();

    return $tb->ok( $test, $phpt_fn );
}

=head1 AUTHOR

Bernhard Schmalhofer, C<< <Bernhard.Schmalhofer at gmx.de> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-test-phpt at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Test-Phpt>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Test::Phpt

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Test-Phpt>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Test-Phpt>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Test-Phpt>

=item * Search CPAN

L<http://search.cpan.org/dist/Test-Phpt/>

=back

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2009 Bernhard Schmalhofer, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;    # End of Test::Phpt
