# LearningPerl6

In this repo I will make the exercises included in the book Learning Perl6, written by [brian](https://github.com/briandfoy).

### Documentation

To see the docs about a certain element you can use:

```
p6doc element
```

Or visit [docs](https://docs.perl6.org/)

### Interesting facts

1. You can check the syntax of a Perl 6 without run it: `perl6 -c hello-world.p6`

2. Binding operator:

   ```
   my $number = 3;
   my $sides := $number;

   my $number := $; (anonymous container)
   $number=3 (asign value to that container)
   ```

   You can use this operator to make constant variables.

3. `my $thingy = $thingy.parse-base` will parse your string and returns a number in its base.

4. ```
   loop {
       state $sum = 0 # to declare private variables in a loop (this line will only be executed once)
       last; # to stop the loop
       next; # to skip iterations
   }
   ```

5. Methods to coerce one objet to its bool value.

   ```
    ?1
    1.Bool
    1.so
   ```

6. `my $value //= 134` => defined-or operator, test if the object is defined, in whose case returns it. Useful to set default values.

7. Chained comparisons: `7 <= $n < 15`

8. `put 'The number is even' if $number %% 2;`

9. ```
    unless $some {
        # this block will run if $some is False.
    }
   ```

10. Do statement:

    ```
    my $type = do if $number %% 2 { 'even' }
    else { 'odd' }
    put 'The number is ', $type;
    ```

11. Ternary operator `CONDITION ?? TRUE BRANCH !! FALSE BRANCH`

### Install

If you want to install Perl 6 too and learn a complete new language I recommend to check this out: https://github.com/nxadm/rakudo-pkg#debian-and-ubuntu

---

#### Blocks

1. `:D` => when used after a type constraint (Int :D for instance) it will force to use defined values (to avoid pass Int as an argument)

2. The first block can not return a value:
   ~~~
   my $callable-block = -> Int:D $argument { ... } 
   my $simple-subrutine = sub subname (Int:D $argument) {return "e"; } # or skipping the variable
   sub subname (Int:D $argument) {return "e"; }
   subname(2); subname.(2);
   subname 2; # only use this notation if it wont confuse the compiler
   ~~~

3. **WhateverCode**:
   ~~~
   my $sum = * + *;
   put $sum( 135, 2 ); # 137
   ~~~

4. Making subsets:
   ~~~
   subset PositiveInt of Int where { $^a > 0 }; # you can replace $^a for *
   my PositiveInt $x = -5;
   put $x;
   # other use for where clause
   sub add-numbers ( $n where * > 0, $m where * > 0 ) {
      $n + $m
   }
   ~~~

#### Positionals

1. Lists:
   ~~~
   my $empty-list = List.new; # or simply () or special object Empty
   # or List.new: 1,2,3 or List.new(1,2,3) to initalize the list
   # or $(1,2,3)
   put 'Elements: ', $empty-list.elems; # Elements: 0
   ~~~
 
 2. To break a String into an array (separating it by whitespaces):
   ~~~
   my $butterfly-genus = qw<Hamadryas Sostrata Junonia>;
   put 'Elements: ', $butterfly-genus.elems; # Elements: 3
   # or equivalent:
   my $b = <Hamad feufhe f euhe>
   ~~~
   
 3. To create a list made of repeated elements:
  ~~~
  my $counts = 0 xx 5; # ( 0, 0, 0, 0, 0 )
  ~~~
 4. `.join: ', '`
 5. Iterates a list:
   ~~~
   for $butterfly-genus.List { # or @butterfly-genus
      put "Found genus $_";
   }
   ~~~
 6. `.words` => into words`.comb` => into characters
 7. Ranges: 
 ~~~
   my $digit-range = 0 .. 10;
   my $digit-range = 0 ^.. 10; # exclude 0 ( 1..10 )
   my $digit-range = 0 ..^ 10; # exclude 10 ( 0..9 )
   my $digit-range = 0 ^..^ 10; # exclude 0 and 10 ( 1..9 )
   my $digit-range = ^10; # Same as 0 ..^ 10
 ~~~
 8. Flaten:
 ~~~
   my $list = ( 1, 2, ('a', 'b') );
   put $list.elems; # 3
   my $flat = $list.flat;
   put $flat.elems; # 4
   say $flat; # (1 2 a b)
 ~~~
 9. Rotor:
 ~~~
   my $list = 1 .. 10;
   my $sublists = $list.rotor: 2;
   say $sublists; # ((1 2) (3 4) (5 6) (7 8) (9 10))
 ~~~
 10. Grep
 ~~~
   my $list = 1 .. 10;
   my $sublists = $list.rotor: 2;
   say $sublists; # ((1 2) (3 4) (5 6) (7 8) (9 10))
 ~~~

#### Errors!

~~~
try {
   my $m = 'Hello';
   my $value = +$m;
   put "value is {$value.^name}";
}
put "ERROR: $!" if $!;
put 'Got to the end.';
~~~

~~~
put 'Problem was ', do given $! {
   when X::Str::Numeric { ... }
   default { ... }
   };
~~~

~~~
try {
   CATCH {
      default { put "Caught {.^name} with ｢{.message}｣" }
   }
   my $m = 'Hello';
   my $value = +$m;
   put "value is {$value.^name}";
}
put "Got to the end.";
~~~
