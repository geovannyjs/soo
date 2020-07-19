use strict;
use warnings;
use lib 't/lib';
 
use Test::More 0.96;


require_ok('Pet');
 
subtest 'default Pet object' => sub {
    
    my $obj = Pet->new({ name => 'Ghost' });

    isa_ok($obj, 'Pet');
    is( $obj->eat, 'eating', 'Pet is eating' );
    is( $obj->fly, 'flying', 'Pet is flying' );
    is( $obj->name, 'Ghost', 'Pet is called Ghost' );
    is( $obj->run, 'running', 'Pet is running' );
    is( $obj->talk, 'talking', 'Pet is talking' );
    is( $obj->sleep, 'sleeping', 'Pet is sleeping' );
};

done_testing;