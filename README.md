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

```

```
