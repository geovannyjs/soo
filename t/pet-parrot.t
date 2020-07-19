use strict;
use warnings;
use lib 't/lib';
 
use Test::More 0.96;


require_ok('Pet::Parrot');
 
subtest 'default Pet::Parrot object' => sub {
    
    my $obj = Pet::Parrot->new({ name => 'Petey' });

    isa_ok($obj, 'Pet::Parrot');
    is( $obj->eat, 'eating', 'Parrot is eating' );
    is( $obj->fly, 'flying', 'Parrot is flying' );
    is( $obj->name, 'Petey', 'Parrot is called Petey' );
    is( $obj->run, 'I cannot run', 'Parrot cannot run' );
    is( $obj->talk, 'argh', 'Parrot talks argh' );
    is( $obj->sleep, 'sleeping', 'Parrot is sleeping' );
};

done_testing;