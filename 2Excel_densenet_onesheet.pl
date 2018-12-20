 #!/usr/bin/perl 
 #!/usr/bin/perl -w 

    use strict;
    use Spreadsheet::WriteExcel;
    use Data::Dumper;
	use warnings;
	use Spreadsheet::ParseExcel;

#count the number of records
use strict;
open(IN, "dense_net_1.log");
my @str = <IN>;
close(IN);
#print scalar(@str);
#end counting the no.of records

open (TABFILE, 'dense_net_1.log') or die "dense_net_1.log: $!";
my $worksheetno=1;
 
#print "\n$worksheetno\n";
    my $workbook  = Spreadsheet::WriteExcel->new('dense_net_2_comparison.xls');

	 my $worksheet1 = $workbook->add_worksheet();
	 $worksheet1->set_column( 'A:K', 30 );

    my $row = 0;
    my $rowcount=0;
	 my $count=0;
	 my $count2=1;
	my $flag=0;
	my $tempRow=0;
	my $format = $workbook->add_format();    
 $format->set_bold();                  
 $format->set_color('purple');            
 $format->set_align('center');  
my	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
my $datestring = localtime();

     while($count2>0)
      {
       while (<TABFILE>) {
       chomp;
        my @Fld = split('     ');
        print "@Fld\n";
        my $col = 0;
	    foreach my $token (@Fld) {
		   if(($token cmp "[INFO]  Begin warmup runs")==0){
		  $flag=1;
		  $tempRow=$row;
	  $worksheet1->write( 3, 0, "Name",  $format); 
$worksheet1->write(3, 1, "Notes", $format); 
$worksheet1->write( 3, 2, "New Time",  $format); 
$worksheet1->write(3, 3, "Time Unit", $format); 
$worksheet1->write( 3, 4, "Last Time",  $format); 
$worksheet1->write(3, 5, "Time Unit", $format); 
 $worksheet1->write( 3, 6, "New FWD/BED Average Time",  $format); 
   $worksheet1->write(3, 7, "Time Unit", $format); 
$worksheet1->write(3, 8, "Last FWD/BED Average Time", $format); 
$worksheet1->write(3, 9, "Time Unit", $format);
$worksheet1->write(3, 10, "Error (New / Last Time) %", $format); 
#$worksheet->write( "G55", "Last Average Time", $format); 
#$worksheet->write( "H55", "Time Unit" , $format); 
$worksheet1->write( 0,1, "Comparison (Net Name)",  $format); 
$worksheet1->write(1, 1, "DenseNet");
$worksheet1->write( 0,3, "Date",  $format); 
$worksheet1->write(1, 3, "date：$datestring");
#$worksheet->write( "J55", "Last Date" , $format); 
#$worksheet->write( "K55", "NV" ,  $format); 
		   }

		  if($flag==1){
 $worksheet1->write($row-$tempRow+3, $col, $token);
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
		  
		foreach  $row ($row-$count+1-$tempRow+3..$row-$tempRow+3) 
{
    foreach  $col(6..7) 
    {
       $worksheet1->write($row, 6, $test1);
	   $worksheet1->write($row, 7, "ms");
    }
	$count=0;
} 
}
            $col++;  

        }
        $row++; 
		$count++; 
		}
        open (TABFILE, 'dense_net_1.log') or die "dense_net_1.log: $!";
        $row=0;
  }

open(IN, "dense_net_2.log");
#print scalar(@str);
#end counting the no.of records
close(IN);
open (TABFILE, 'dense_net_2.log') or die "dense_net_2.log: $!";

#print "\n$worksheetno\n";
  
    my $row2 = 0;
    my $rowcount2=0;
	 my $count22=0;
	 my $count222=1;
	my $flag2=0;
	my $tempRow2=0;

	#my $col=0;

     while($count222>0)
      {
    
       while (<TABFILE>) {
       chomp;
        my @Fld = split('     ');
        print "@Fld\n";
        my $col2 = 2;
	    foreach my $token2 (@Fld) {
		
		   if(($token2 cmp "[INFO]  Begin warmup runs")==0){
		  $flag2=1;
		  $tempRow2=$row2;
		   }
		   
		  if(($flag2==1) &&(($token2 cmp "[INFO]")!=0) &&(($token2 cmp "[INFO]  Begin Timings")!=0)){
 $worksheet1->write($row2-$tempRow2+3, $col2, $token2);
 }

if(($token2 cmp "[INFO]  Avg time per fwd+bwd")==0){
my $test6 = sprintf("=(C%d/E%d)*100-100",$row2+1-$tempRow2+3,$row2+1-$tempRow2+3);
		  $worksheet1->write($row2-$tempRow2+3,10, $test6);
		$count222=0;
		}

		if((($token2 cmp "[INFO]  Avg time per fwd")==0)||(($token2 cmp "[INFO]  Avg time per bwd")==0)){
	
		 my $test45 = sprintf("=(C%d/E%d)*100-100",$row2+1-$tempRow2+3,$row2+1-$tempRow2+3);
		  $worksheet1->write($row2-$tempRow2+3,10, $test45);
		}

		   if( (($token2 cmp "  ======= BEGIN FWD =======")==0)|| (($token2 cmp "  ======= BEGIN BWD =======")==0)){
		  $count22=0;
		   }

		  if (($token2 cmp "[INFO]  Model")==0){		   
		  # print("=AVERAGE(($row-21,2):($row,2))");
		  # print("=AVERAGE(C$temp:C$row)");
		  #printf( "=AVERAGE(C%d:C%d)",$row-21,$row);
		  my $test2 = sprintf("=AVERAGE(E%d:E%d)",$row2-$count22+2-$tempRow2+3,$row2+1-$tempRow2+3);
		 # print ($test1);

		  my $test3 = sprintf("=(G%d/I%d)*100-100",$row2-$count22+2-$tempRow2+3,$row2-$count22+2-$tempRow2+3);

		foreach  $row2 ($row2-$count22+1-$tempRow2+3..$row2-$tempRow2+3) 
{
    foreach  $col2(8..11) 
    {
       $worksheet1->write($row2, 8, $test2);
	   $worksheet1->write($row2, 9, "ms");
	   $worksheet1->write($row2,10, $test3);
	   #positive or negative (-100 +100)
	   
    }
	$count22=0;
} 
}
            $col2++;  
        }
        $row2++; 
		$count22++; 
		}
        open (TABFILE, 'dense_net_2.log') or die "dense_net_2.log: $!";
        $row2=0;
  }



   