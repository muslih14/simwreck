#!/usr/bin/perl

    use strict;
    use warnings;
    use Data::Dumper;
    use Getopt::Std;
    use Bio::SeqIO;



binary_search(3,1..11);


exit;



   
sub binary_search #################################################################################################################################################################################################################################################################################
{
    print "New level\n";
    my $tgt = shift;
    print "In: @_\nTgt: $tgt\n";
    my $l = scalar @_;
    my $a = $l/2;
    my $b = $a - 1;
    my $up = $_[$a];
    my $down = $_[$b];
    my @upper = @_[$a..scalar(@_)-1];
    my @lower = @_[0..$b];
    
    print "Length: $l\nA: $a\nB: $b\nUp: $up\nDown: $down\nLower: @lower\nUpper: @upper\n";
    #(($up >= $tgt) && ($down <= $tgt)) && (return $b); work out logic tree here
    
    if (($down < $tgt) && ($up >= $tgt))
    {
	return $down;
    }
    elsif ()
    {
	
    }


}




sub max #################################################################################################################################################################################################################################################################################
{
    my $best = shift;
    foreach (@_)
    {
	($_ > $best) && ($best = $_)
    }
    $best;
}

sub nint ##################################################################################################################################################################################################################################################################################
{
    (($_[0] - int($_[0])) >= 0.5) ? return int($_[0]) + 1 : return int($_[0])
}