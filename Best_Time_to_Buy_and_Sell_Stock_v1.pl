#!/bin/perl -w

use strict;
use feature 'say';
use List::Util qw/max min/;

sub Best_Time_to_Buy_and_Sell_Stock{
	my @prices = @_;
	my $low = $prices[0];	
	my $profit = 0;

	foreach (1 .. $#prices){
		$profit = max($profit, $prices[$_] - $low);
		$low = min($low, $prices[$_]);	
	} 	

	return $profit
}

say(Best_Time_to_Buy_and_Sell_Stock(7, 1, 5, 3, 6, 4)); # 5
say(Best_Time_to_Buy_and_Sell_Stock(7, 6, 4, 3, 1)); # 0
