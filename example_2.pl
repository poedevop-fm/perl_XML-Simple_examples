#!perl
#
$|=1;
#
my $filename = './example_2.xml';
#
use XML::Simple qw(:strict);
use Data::Dumper;
#
#
my $xs  = XML::Simple->new( ForceArray => 0, KeyAttr => "data" );
my $ref = $xs->XMLin( $filename );

my $counter = 0; 

printf "%-16s %s\n", "short name", "long name";
printf "%-16s %s\n", "----------------", "----------------------------------------";
while ( $counter <= $#{$ref->{ 'config' } } )
	{
	printf "%-16s %s\n", $ref->{ 'config' }[$counter]->{ 'name' }, $ref->{ 'config' }[$counter]->{ 'fullname' };
	$counter++;
	}
