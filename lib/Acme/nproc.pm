package Acme::nproc;
use strict;
use warnings;

our $VERSION = '0.01';
use Exporter 'import';
our @EXPORT = qw(nproc);

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

1;
__END__

=encoding utf-8

=head1 NAME

Acme::nproc - nproc(1)

=head1 SYNOPSIS

  use Acme::nproc;

  my $num = nproc;

=head1 DESCRIPTION

Acme::nproc provides C<nproc(1)> function in your perl program.

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
