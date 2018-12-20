use Spreadsheet::ParseExcel;
my $a_wks = Spreadsheet::ParseExcel->new->Parse('AlextNet_singledate_hidding_plus_plus.xls')->{ Worksheet }[ 0 ];
my $b_wks = Spreadsheet::ParseExcel->new->Parse('AlextNet_singledate_hidding_plus_plus_2.xls')->{ Worksheet }[ 0 ];

my @re =
  map { my $re = $b_wks->Cell( $_, $b_wks->{ MinCol } )->Val; qr/\Q$re/ }
      $b_wks->{ MinRow }..$b_wks->{ MaxRow };

for my $i ( $a_wks->{ MinRow } .. $a_wks{ MaxRow } ) {
  my $string = $a_wks->Cell( $i, $a_wks->{ MinCol } )->Val;
  for my $re ( @re ) {
    if ( $string =~ /$re/ ) {
      do_the_i_found_it_dance();
      last;
    }
  }
}