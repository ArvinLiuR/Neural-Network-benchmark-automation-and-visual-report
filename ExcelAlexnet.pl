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
print scalar(@str);
#end counting the no.of records

open (TABFILE, 'alexnet.log') or die "alexnet.log: $!";
my $worksheetno=1;
#my $worksheetno=(int(@str/10))+1;
#print "\n$worksheetno\n";
    my $workbook  = Spreadsheet::WriteExcel->new('AlextNet.xls');
    my $row = 0;
    my $rowcount=0;
	 my $count2=1;

my	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

     while($count2>0)
      {
      my $worksheet = $workbook->add_worksheet();
	 $worksheet->set_column( 'A:K', 28 );
	 my $format = $workbook->add_format();    
 $format->set_bold();                  
 $format->set_color('purple');            
 $format->set_align('center');  

	  $worksheet->write( "A55", "Name",  $format); 
$worksheet->write( "B55", "Notes", $format); 
$worksheet->write( "C55", "Time",  $format); 
$worksheet->write( "D55", "Time Unit", $format); 
$worksheet->write( "E55", "Average Time",  $format); 
$worksheet->write( "F55", "Time Unit", $format); 
#$worksheet->write( "G55", "Last Average Time", $format); 
#$worksheet->write( "H55", "Time Unit" , $format); 
$worksheet->write( "G55", "Date",  $format); 
#$worksheet->write( "J55", "Last Date" , $format); 
#$worksheet->write( "K55", "NV" ,  $format); 

my $datestring = localtime();

       while (<TABFILE>) {
       chomp;
        my @Fld = split('     ');
        print "@Fld\n";
        my $col = 0;
	    foreach my $token (@Fld) {
		
		   $worksheet->write($row, $col, $token);

		   if(($token cmp "[INFO]  Avg time per fwd+bwd")==0){
		$count2=0;
		}

		  if (($token cmp "[INFO]  Model")==0){
		   
		  # print("=AVERAGE(($row-21,2):($row,2))");
		  # print("=AVERAGE(C$temp:C$row)");
		  #printf( "=AVERAGE(C%d:C%d)",$row-21,$row);
		  my $test1 = sprintf("=AVERAGE(C%d:C%d)",$row-20,$row+1);
		 # print ($test1);
		foreach  $row ($row-21..$row) 
{
    foreach  $col(4..5) 
    {
       $worksheet->write($row, 4, $test1);
	   $worksheet->write($row, 5, "ms");
	   $worksheet->write($row, 6, "date：$datestring");
    }
} 
}
            $col++;  
        }
        $row++; }
        open (TABFILE, 'alexnet.log') or die "alexnet.log: $!";
        $row=0;
    #  $worksheetno--;
  }
