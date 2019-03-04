#!/usr/bin/env perl6

sub MAIN ($multiple = 3) {
    state $current = $multiple;
    loop {    
        put $current;
        $current += $multiple;
        last if $current == 5;
    }
}


