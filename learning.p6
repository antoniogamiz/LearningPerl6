

# #Declarar variables
# my $v="elena me ensenia";

# say ?$v; #Inicializada
# say $v.defined; #Definida
# say $v.WHAT; #Que tipo es (return (type))
# say $v.^name; #que tipo es (return type)

# $v= so ""; say $v; #so
# $v= so "elena"; say $v;

# #Escribir caracteres unicode
# $v="\c[GREEK SMALL LETTER PI]"; say $v;
# $v="\x03C0"; say $v;

# say $v=0...10; #Listas de numeros
# my (Str $a, Int $b)=<aa 3>; #Declarar varias variables
# say $a; say $b;

# say $a ~ " " ~ $b; #Concatenar

# #Arrays
# my @array1= 1, 2, 3; say @array1; #solo muestra el primero, idn
# my $array2=<. 2 3>; say $array2;
# @array1>>.say;


# my @keys=0,2; my @vector=1, 2, 3, 4; my @letters=<a b c>;
# @vector[@keys]=@letters;
# say @vector;

my @array_=<"patata" 43534 "maspapatas" "ELENAAAAAAAAAAAAaAAAAaAaA">;
say @array_.grep: Int;

say grep { .Str.chars < 6 }, @array_;
say @array_.grep(none Int);
say grep { .Str.chars < 6 }, @array_, :p; #Para que te devuelve la posicion (:k) y valor (:v) en un hash (:kv las dos)

say [1..9].first: * > 5, :p; #Para buscar elementos

my @numeritos=0...1000;
say grep { .first: * %%(13&17) }, @numeritos;

say [+] grep { .first: * %%(13&17) }, @numeritos;
say [+] grep * %% (13&17), @numeritos;