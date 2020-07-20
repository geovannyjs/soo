use strict;
use warnings;

package Pet;

use Soo;

has eat => { default => 'eating' };
has fly => { default => 'flying' };
has 'name';
has run => { default => 'running' };
has talk => { default => 'talking' };
has sleep => { default => 'sleeping' };


package Pet::Cat;

use Soo;

extends 'Pet';

has fly => { default => 'I cannot fly' };
has talk => { default => 'meow' };


package Pet::Dog;

use Soo;

extends 'Pet';

has fly => { default => 'I cannot fly' };
has talk => { default => 'wow' };


package Pet::Parrot;

use Soo;

extends 'Pet';

has run => { default => 'I cannot run' };
has talk => { default => 'argh' };


package main;

use 5.010;

my $cat = Pet::Cat->new({ name => 'Simba' });
my $dog = Pet::Dog->new({ name => 'Buddy' });
my $parrot = Pet::Parrot->new({ name => 'Petey' });

say "Name: ", $cat->name;
say "Talk: ", $cat->talk;
say "Run: ", $cat->run;
say "Fly: ", $cat->fly;
say "Sleep: ", $cat->sleep;
say "Eat: ", $cat->eat;

say "Name: ", $dog->name;
say "Talk: ", $dog->talk;
say "Run: ", $dog->run;
say "Fly: ", $dog->fly;
say "Sleep: ", $dog->sleep;
say "Eat: ", $dog->eat;

say "Name: ", $parrot->name;
say "Talk: ", $parrot->talk;
say "Run: ", $parrot->run;
say "Fly: ", $parrot->fly;
say "Sleep: ", $parrot->sleep;
say "Eat: ", $parrot->eat;
