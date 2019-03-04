#!/usr/bin/env perl6

sub MAIN ($highest = 100) {
    my $secret = $highest.rand.Int;
    put "The secret number is: ", $secret;
    loop {
        state $answer = prompt "Type a number: ";
        if $answer > $secret {
            put "Secret number is lower."
        } elsif $answer < $secret {
            put "Secret number is greater."
        } else {
            put "Congratulations, you have guessed the number :D.";
            last;
        }
        $answer = prompt "Type a number";
    }
}