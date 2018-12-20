 #!/usr/bin/perl 
 #!/usr/bin/perl -w 

    use strict;
    use Spreadsheet::WriteExcel;
    use Data::Dumper;
	use warnings;
	use Spreadsheet::ParseExcel;

#count the number of records
use strict;
open(IN, "alexnet.log");
my @str = <IN>;
close(IN);
#print scalar(@str);
#end counting the no.of records

open (TABFILE, 'alexnet.log') or die "alexnet.log: $!";
my $worksheetno=1;
#print "\n$worksheetno\n";
    my $workbook  = Spreadsheet::WriteExcel->new('AlextNet_singledate_plus.xls');
    my $row = 0;
    my $rowcount=0;
	 my $count=0;
	 my $count2=1;
	# my $flag=0;

my	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
my $datestring = localtime();
     while($count2>0)
      {
      my $worksheet = $workbook->add_worksheet();
	 $worksheet->set_column( 'A:K', 28 );
	 my $format = $workbook->add_format();    
 $format->set_bold();                  
 $format->set_color('purple');            
 $format->set_align('center');  

       while (<TABFILE>) {
       chomp;
        my @Fld = split('     ');
        print "@Fld\n";
        my $col = 0;
	    foreach my $token (@Fld) {
		
		   if(($token cmp "[INFO]  Begin warmup runs")==0){
		  # $flag=1;

	  $worksheet->write( ($row+1), 0, "Name",  $format); 
$worksheet->write($row, 1, "Notes", $format); 
$worksheet->write( $row, 2, "Time",  $format); 
$worksheet->write( $row, 3, "Time Unit", $format); 
$worksheet->write( $row, 4, "Average Time",  $format); 
$worksheet->write( $row, 5, "Time Unit", $format); 
#$worksheet->write( "G55", "Last Average Time", $format); 
#$worksheet->write( "H55", "Time Unit" , $format); 
$worksheet->write( ($row-3), 2, "Date",  $format); 
$worksheet->write(($row-2), 2, "date：$datestring");
#$worksheet->write( "J55", "Last Date" , $format); 
#$worksheet->write( "K55", "NV" ,  $format); 
		   }

		#   if($flag==1){
 $worksheet->write($row, $col, $token);
# }

if(($token cmp "[INFO]  Avg time per fwd+bwd")==0){
		$count2=0;
		}

		   if( (($token cmp "  ======= BEGIN FWD =======")==0)|| (($token cmp "  ======= BEGIN BWD =======")==0)){
		  $count=0;
		   }

		  if (($token cmp "[INFO]  Model")==0){		   
		  # print("=AVERAGE(($row-21,2):($row,2))");
		  # print("=AVERAGE(C$temp:C$row)");
		  #printf( "=AVERAGE(C%d:C%d)",$row-21,$row);
		  my $test1 = sprintf("=AVERAGE(C%d:C%d)",$row-$count+2,$row+1);
		 # print ($test1);
		foreach  $row ($row-$count+1..$row) 
{
    foreach  $col(4..5) 
    {
       $worksheet->write($row, 4, $test1);
	   $worksheet->write($row, 5, "ms");
	   
    }
	$count=0;
} 
}
            $col++;  
        }
        $row++; 
		$count++; 
		}
		
        open (TABFILE, 'alexnet.log') or die "alexnet.log: $!";
        $row=0;
    
  }
