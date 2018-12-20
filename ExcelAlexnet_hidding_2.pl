 #!/usr/bin/perl 
 #!/usr/bin/perl -w 

    use strict;
    use Spreadsheet::WriteExcel;
    use Data::Dumper;
	use warnings;
	use Spreadsheet::ParseExcel;

#count the number of records
use strict;
open(IN, "alexnet2.log");
my @str = <IN>;
close(IN);
#print scalar(@str);
#end counting the no.of records

open (TABFILE, 'alexnet2.log') or die "alexnet2.log: $!";
my $worksheetno=1;
#print "\n$worksheetno\n";
    my $workbook  = Spreadsheet::WriteExcel->new('AlextNet_singledate_hidding_plus_plus_2.xls');
    my $row = 0;
    my $rowcount=0;
	 my $count=0;
	 my $count2=1;
	my $flag=0;
	my $tempRow=0;

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
		  $flag=1;
		  $tempRow=$row;
	  $worksheet->write( 3, 0, "Name",  $format); 
$worksheet->write(3, 1, "Notes", $format); 
$worksheet->write( 3, 2, "Time",  $format); 
$worksheet->write(3, 3, "Time Unit", $format); 
$worksheet->write(3, 4, "Average Time",  $format); 
$worksheet->write( 3, 5, "Time Unit", $format); 
#$worksheet->write( "G55", "Last Average Time", $format); 
#$worksheet->write( "H55", "Time Unit" , $format); 
$worksheet->write( 0,1, "Net Name",  $format); 
$worksheet->write(1, 1, "AlexNet");
$worksheet->write( 0,3, "Date",  $format); 
$worksheet->write(1, 3, "date：$datestring");
#$worksheet->write( "J55", "Last Date" , $format); 
#$worksheet->write( "K55", "NV" ,  $format); 
		   }

		  if($flag==1){
 $worksheet->write($row-$tempRow+3, $col, $token);
 }

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
		  my $test1 = sprintf("=AVERAGE(C%d:C%d)",$row-$count+2-$tempRow+3,$row+1-$tempRow+3);
		 # print ($test1);
		foreach  $row ($row-$count+1-$tempRow+3..$row-$tempRow+3) 
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

        open (TABFILE, 'alexnet2.log') or die "alexnet2.log: $!";
        $row=0;
    
  }
