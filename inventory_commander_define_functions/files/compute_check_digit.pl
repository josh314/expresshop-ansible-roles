
my @digits = split '', reverse $_[0];
my $totes = 0;
while ( my ($i, $c) = each @digits ) {
  if ( $i % 2 == 0 ) {
    $totes = $totes + 3*$c;
  }
  else {
    $totes = $totes + 1*$c;
  }
}
my $check_digit = -$totes % 10;

return "".$check_digit;
