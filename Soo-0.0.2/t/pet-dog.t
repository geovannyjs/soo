use strict;
use warnings;
use lib 't/lib';
 
use Test::More 0.96;


require_ok('Pet::Dog');
 
subtest 'default Pet::Dog object' => sub {
    
    my $obj = Pet::Dog->new({ name => 'Buddy' });

    isa_ok($obj, 'Pet::Dog');
    is( $obj->eat, 'eating', 'Dog is eating' );
    is( $obj->fly, 'I cannot fly', 'Dog cannot fly' );
    is( $obj->name, 'Buddy', 'Dog is called Buddy' );
    is( $obj->run, 'running', 'Dog is running' );
    is( $obj->talk, 'wow', 'Dog talks meow' );
    is( $obj->sleep, 'sleeping', 'Dog is sleeping' );
};

done_testing;