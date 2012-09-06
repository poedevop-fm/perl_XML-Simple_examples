#!perl
#
$|=1;
#
my $filename = './example_4.xml';
#
use XML::Simple qw(:strict);
use Data::Dumper;
#
#
my $xs  = XML::Simple->new( ForceArray => [ 'config', 'filename' ], KeyAttr => "data" );
my $ref = $xs->XMLin( $filename );

my $counter = 0; 

printf "%-16s %s\n", "short name", "long name";
printf "%-16s %s\n", "----------------", "---------------------------------------------------------------";
while ( $counter <= $#{$ref->{ 'config' } } )
	{
	my $subcounter=0;
	printf "%-16s %s\n", $ref->{ 'config' }[$counter]->{ 'name' }, $ref->{ 'config' }[$counter]->{ 'fullname' };
	while ( $subcounter < $#{ $ref->{ 'config' }[$counter]->{ 'filename' } }+1 )
		{
		printf "%16s | %s\n", "", $ref->{ 'config' }[$counter]->{ 'filename' }[$subcounter];
		$subcounter++;
		}
	$counter++;
	}
