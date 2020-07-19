use strict;
use warnings;
use lib 't/lib';
 
use Test::More 0.96;


require_ok('Pet::Cat');
 
subtest 'default Pet::Cat object' => sub {
    
    my $obj = Pet::Cat->new({ name => 'Simba' });

    isa_ok($obj, 'Pet::Cat');
    is( $obj->eat, 'eating', 'Cat is eating' );
    is( $obj->fly, 'I cannot fly', 'Cat cannot fly' );
    is( $obj->name, 'Simba', 'Cat is called Simba' );
    is( $obj->run, 'running', 'Cat is running' );
    is( $obj->talk, 'meow', 'Cat talks meow' );
    is( $obj->sleep, 'sleeping', 'Cat is sleeping' );
};

done_testing;