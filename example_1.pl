#!perl
#
$|=1;
#
my $filename = './example_1.xml';
#
use XML::Simple qw(:strict);
use Data::Dumper;
#
#
my $xs  = XML::Simple->new( ForceArray => 0, KeyAttr => "config" );
my $ref = $xs->XMLin( $filename );

printf "%-16s %s\n", "short name", "long name";
printf "%-16s %s\n", "----------------", "----------------------------------------";
printf "%-16s %s\n", $ref->{ 'name' }, $ref->{ 'fullname' };
