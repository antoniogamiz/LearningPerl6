#!/usr/bin/env perl6

3.^name; # type
3.^mro; # inheritance chain
3.^methods; # available methods

# embedded comment
put #`(Marketing asked for this) 'Hello Perl 6!';


# sometimes spaces are important
# my-sub 1, 2, 3; # three arguments
# my-sub( 1, 2, 3 ); # three arguments
# my-sub ( 1, 2, 3 ); # one argument (a List)

# my-sub\ ( 2, 4, 8 );
# my-much-longer-name( 1, 3, 7 );

# colon notation to create new objects
# my $fraction = Rat.new: 5, 4;

# $ for scalars
# @ for positionals
# % for associatives
# & for callables

# put
# print (to avoid a new line)
# say (this calls .gist method)

# create constant values (binding operator)
# my magic-number:=42

# say $?FILE; (current file)
# $ => sigil ? => twigil
# * twigil => dynamic variables