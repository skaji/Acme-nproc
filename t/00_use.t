use strict;
use warnings;
use Test::More tests => 1;
use Acme::nproc;
use File::Which 'which';

my $num = nproc;

if (which 'nproc') {
    my $nproc = `nproc`;
    chomp $nproc;
    is $num, $nproc;
} else {
    note "nproc command is missing...";
    note "Acme::nproc::nproc() returns $num";
    pass "ok";
}
