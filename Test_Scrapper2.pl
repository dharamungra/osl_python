use LWP::Simple;
use HTML::TreeBuilder;
use HTML::FormatText;




#$URL = get("http://www.nirmauni.ac.in ");
$URL = get("http://www.udemy.com");

use LWP::Simple;
use HTML::TreeBuilder;
use HTML::FormatText;




#$URL = get("http://www.nirmauni.ac.in ");
$URL = get("http://www.udemy.com");


$Format = HTML::FormatText->new;


$TreeBuilder = HTML::TreeBuilder->new ;


$TreeBuilder->parse($URL);


$Parsed = 	$Format->format($TreeBuilder);


#printing the output to the file 

open(my $fh, '>', 'TextFile.txt');
print $fh "$Parsed";
close $fh;
print "done\n";

$Format = HTML::FormatText->new;


$TreeBuilder = HTML::TreeBuilder->new ;


$TreeBuilder->parse($URL);


$Parsed = 	$Format->format($TreeBuilder);

#printing the output to the cmd

print "$Parsed";

