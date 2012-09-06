#!perl
#
$|=1;
#
my $filename = './example_3.xml';
#
use XML::Simple qw(:strict);
use Data::Dumper;
#
#
my $xs  = XML::Simple->new( ForceArray => [ 'config', 'filename' ], KeyAttr => "data" );
my $ref = $xs->XMLin( $filename );

my $counter = 0; 

printf "[#] %-16s %s\n", "short name", "long name";
printf "%-3s %-16s %s\n", "---", "----------------", "---------------------------------------------------------------";
while ( $counter <= $#{$ref->{ 'config' } } )
	{
	printf "%2d  %-16s %s\n", $#{ $ref->{ 'config' }[$counter]->{ 'filename' } }+1, $ref->{ 'config' }[$counter]->{ 'name' }, $ref->{ 'config' }[$counter]->{ 'fullname' };
	$counter++;
	}
