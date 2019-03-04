#!/usr/bin/env perl6

sub MAIN ($highest = 100) {
    my $secret = $highest.rand.Int;
    put "The secret number is: ", $secret;
}