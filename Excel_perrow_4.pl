﻿ #!/usr/bin/perl 
 #!/usr/bin/perl -w 

    use strict;
    use Spreadsheet::WriteExcel;
    use Data::Dumper;
	use warnings;
	use Spreadsheet::ParseExcel;

#count the number of records
use strict;
open(IN, "alexnet_1.log");
my @str = <IN>;
close(IN);
#print scalar(@str);
#end counting the no.of records

open (TABFILE, 'alexnet_1.log') or die "alexnet_1.log: $!";
my $worksheetno=1;
 
#print "\n$worksheetno\n";
    my $workbook  = Spreadsheet::WriteExcel->new('AlextNet_Comparison_perrow_4.xls');

	 my $worksheet1 = $workbook->add_worksheet();
	 $worksheet1->set_column( 'A:K', 28 );
	 my $count11=0;

    my $row = 0;
    my $rowcount=0;
	 my $count=0;
	 my $count2=1;
	my $flag=0;
	my $tempRow=0;

	my $flag4=2;
    my $stageCount=0;

	my $flag3=0;
	my $count3=0;
	my $sum3BWD=0;
	my $avgModelBWD= 0;
	my $sum3FWD=0;
	my $avgModelFWD= 0;

		my $flag32=0;
	my $flag33=0;
	my $flag34=0;
	my $flag35=0;
	my $flag36=0;
	my $flag37=0;
	my $flag38=0;
	my $flag39=0;
		my $flag40=0;
	my $flag41=0;
	my $flag42=0;
	my $flag43=0;
	my $flag44=0;
	my $flag45=0;
	my $flag46=0;
	my $flag47=0;
		my $flag48=0;
	my $flag49=0;
	my $flag50=0;
	my $flag51=0;
	my $flag52=0;


	my $avgCount1FWD= 0;
	my $sumCount1FWD= 0;
    my $avgCount1BWD= 0;
	my $sumCount1BWD= 0;

	my $avgCount2FWD= 0;
	my $sumCount2FWD= 0;
    my $avgCount2BWD= 0;
	my $sumCount2BWD= 0;
	my $avgCount3FWD= 0;
	my $sumCount3FWD= 0;
    my $avgCount3BWD= 0;
	my $sumCount3BWD= 0;
	my $avgCount4FWD= 0;
	my $sumCount4FWD= 0;
    my $avgCount4BWD= 0;
	my $sumCount4BWD= 0;
	my $avgCount5FWD= 0;
	my $sumCount5FWD= 0;
    my $avgCount5BWD= 0;
	my $sumCount5BWD= 0;
	my $avgCount6FWD= 0;
	my $sumCount6FWD= 0;
    my $avgCount6BWD= 0;
	my $sumCount6BWD= 0;
	my $avgCount7FWD= 0;
	my $sumCount7FWD= 0;
    my $avgCount7BWD= 0;
	my $sumCount7BWD= 0;
	my $avgCount8FWD= 0;
	my $sumCount8FWD= 0;
    my $avgCount8BWD= 0;
	my $sumCount8BWD= 0;
	my $avgCount9FWD= 0;
	my $sumCount9FWD= 0;
    my $avgCount9BWD= 0;
	my $sumCount9BWD= 0;
	my $avgCount10FWD= 0;
	my $sumCount10FWD= 0;
    my $avgCount10BWD= 0;
	my $sumCount10BWD= 0;
	my $avgCount11FWD= 0;
	my $sumCount11FWD= 0;
    my $avgCount11BWD= 0;
	my $sumCount11BWD= 0;
	my $avgCount12FWD= 0;
	my $sumCount12FWD= 0;
    my $avgCount12BWD= 0;
	my $sumCount12BWD= 0;
	my $avgCount13FWD= 0;
	my $sumCount13FWD= 0;
    my $avgCount13BWD= 0;
	my $sumCount13BWD= 0;
	my $avgCount14FWD= 0;
	my $sumCount14FWD= 0;
    my $avgCount14BWD= 0;
	my $sumCount14BWD= 0;
	my $avgCount15FWD= 0;
	my $sumCount15FWD= 0;
    my $avgCount15BWD= 0;
	my $sumCount15BWD= 0;
	my $avgCount16FWD= 0;
	my $sumCount16FWD= 0;
    my $avgCount16BWD= 0;
	my $sumCount16BWD= 0;
	my $avgCount17FWD= 0;
	my $sumCount17FWD= 0;
    my $avgCount17BWD= 0;
	my $sumCount17BWD= 0;
	my $avgCount18FWD= 0;
	my $sumCount18FWD= 0;
    my $avgCount18BWD= 0;
	my $sumCount18BWD= 0;
	my $avgCount19FWD= 0;
	my $sumCount19FWD= 0;
    my $avgCount19BWD= 0;
	my $sumCount19BWD= 0;
	my $avgCount20FWD= 0;
	my $sumCount20FWD= 0;
    my $avgCount20BWD= 0;
	my $sumCount20BWD= 0;
	my $avgCount21FWD= 0;
	my $sumCount21FWD= 0;
    my $avgCount21BWD= 0;
	my $sumCount21BWD= 0;

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
$worksheet1->write(3, 10, "Error (New / Last Time) (+/- %)", $format); 
#$worksheet->write( "G55", "Last Average Time", $format); 
#$worksheet->write( "H55", "Time Unit" , $format); 
$worksheet1->write( 0,1, "Comparison (Net Name)",  $format); 
$worksheet1->write(1, 1, "AlexNet");
$worksheet1->write( 0,3, "Date",  $format); 
$worksheet1->write(1, 3, "date：$datestring");
#$worksheet->write( "J55", "Last Date" , $format); 
#$worksheet->write( "K55", "NV" ,  $format); 
		   }

		  if($flag==1){
 $worksheet1->write($row-$tempRow+3, $col, $token);

 if($flag3==0){
 if ($flag4==1){
 	 $sum3BWD+=$token;}
 
  if ($flag4==0){
 	 $sum3FWD+=$token;}
 }

  if($flag32==0){
 if ($flag4==1){
 	 $sumCount1BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount1FWD+=$token;}
 }

  if($flag33==0){
 if ($flag4==1){
 	 $sumCount2BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount2FWD+=$token;}
 }

 if($flag34==0){
 if ($flag4==1){
 	 $sumCount3BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount3FWD+=$token;}
 }

  if($flag35==0){
 if ($flag4==1){
 	 $sumCount4BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount4FWD+=$token;}
 }

  if($flag36==0){
 if ($flag4==1){
 	 $sumCount5BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount5FWD+=$token;}
 }

  if($flag37==0){
 if ($flag4==1){
 	 $sumCount6BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount6FWD+=$token;}
 }

  if($flag38==0){
 if ($flag4==1){
 	 $sumCount7BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount7FWD+=$token;}
 }

  if($flag39==0){
 if ($flag4==1){
 	 $sumCount8BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount8FWD+=$token;}
 }

  if($flag40==0){
 if ($flag4==1){
 	 $sumCount9BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount9FWD+=$token;}
 }

  if($flag41==0){
 if ($flag4==1){
 	 $sumCount10BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount10FWD+=$token;}
 }

  if($flag42==0){
 if ($flag4==1){
 	 $sumCount11BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount11FWD+=$token;}
 }

  if($flag43==0){
 if ($flag4==1){
 	 $sumCount12BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount12FWD+=$token;}
 }

  if($flag44==0){
 if ($flag4==1){
 	 $sumCount13BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount13FWD+=$token;}
 }

  if($flag45==0){
 if ($flag4==1){
 	 $sumCount14BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount14FWD+=$token;}
 }

  if($flag46==0){
 if ($flag4==1){
 	 $sumCount15BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount15FWD+=$token;}
 }

  if($flag47==0){
 if ($flag4==1){
 	 $sumCount16BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount16FWD+=$token;}
 }

  if($flag48==0){
 if ($flag4==1){
 	 $sumCount17BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount17FWD+=$token;}
 }

  if($flag49==0){
 if ($flag4==1){
 	 $sumCount18BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount18FWD+=$token;}
 }

  if($flag50==0){
 if ($flag4==1){
 	 $sumCount19BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount19FWD+=$token;}
 }
  if($flag51==0){
 if ($flag4==1){
 	 $sumCount20BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount20FWD+=$token;}
 }

  if($flag52==0){
 if ($flag4==1){
 	 $sumCount21BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount21FWD+=$token;}
 }
 
 $flag3++;

  $flag32++;
  $flag33++;
  $flag34++;
  $flag35++;
  $flag36++;
  $flag37++;
  $flag38++;
  $flag39++;
    $flag40++;
  $flag41++;
  $flag42++;
  $flag43++;
  $flag44++;
  $flag45++;
  $flag46++;
  $flag47++;
    $flag48++;
  $flag49++;
  $flag50++;
  $flag51++;
  $flag52++;
  
 }

 if(($token cmp "[INFO]  Avg time per fwd")==0){
		
		 # my $test1 = sprintf("=AVERAGE($totalString)");
		   $avgModelFWD= $sum3FWD/($count3/2);
		   $avgModelBWD= $sum3BWD/($count3/2);

		     $avgCount1FWD= $sumCount1FWD/($count3/2);
		   $avgCount1BWD= $sumCount1BWD/($count3/2);

		   $avgCount2FWD= $sumCount2FWD/($count3/2);
		   $avgCount2BWD= $sumCount2BWD/($count3/2);

		   $avgCount3FWD= $sumCount3FWD/($count3/2);
		   $avgCount3BWD= $sumCount3BWD/($count3/2);

		   $avgCount4FWD= $sumCount4FWD/($count3/2);
		   $avgCount4BWD= $sumCount4BWD/($count3/2);

		   $avgCount5FWD= $sumCount5FWD/($count3/2);
		   $avgCount5BWD= $sumCount5BWD/($count3/2);

		    $avgCount6FWD= $sumCount6FWD/($count3/2);
		   $avgCount6BWD= $sumCount6BWD/($count3/2);

		     $avgCount7FWD= $sumCount7FWD/($count3/2);
		   $avgCount7BWD= $sumCount7BWD/($count3/2);

		   $avgCount8FWD= $sumCount8FWD/($count3/2);
		   $avgCount8BWD= $sumCount8BWD/($count3/2);

		   $avgCount9FWD= $sumCount9FWD/($count3/2);
		   $avgCount9BWD= $sumCount9BWD/($count3/2);

		   $avgCount10FWD= $sumCount10FWD/($count3/2);
		   $avgCount10BWD= $sumCount10BWD/($count3/2);

		    $avgCount11FWD= $sumCount11FWD/($count3/2);
		   $avgCount11BWD= $sumCount11BWD/($count3/2);

		     $avgCount12FWD= $sumCount12FWD/($count3/2);
		   $avgCount12BWD= $sumCount12BWD/($count3/2);

		   $avgCount13FWD= $sumCount13FWD/($count3/2);
		   $avgCount13BWD= $sumCount13BWD/($count3/2);

		   $avgCount14FWD= $sumCount14FWD/($count3/2);
		   $avgCount14BWD= $sumCount14BWD/($count3/2);

		   $avgCount15FWD= $sumCount15FWD/($count3/2);
		   $avgCount15BWD= $sumCount15BWD/($count3/2);

		    $avgCount16FWD= $sumCount16FWD/($count3/2);
		   $avgCount16BWD= $sumCount16BWD/($count3/2);

		     $avgCount17FWD= $sumCount17FWD/($count3/2);
		   $avgCount17BWD= $sumCount17BWD/($count3/2);

		   $avgCount18FWD= $sumCount18FWD/($count3/2);
		   $avgCount18BWD= $sumCount18BWD/($count3/2);

		   $avgCount19FWD= $sumCount19FWD/($count3/2);
		   $avgCount19BWD= $sumCount19BWD/($count3/2);

		   $avgCount20FWD= $sumCount20FWD/($count3/2);
		   $avgCount20BWD= $sumCount20BWD/($count3/2);

		    $avgCount21FWD= $sumCount21FWD/($count3/2);
		   $avgCount21BWD= $sumCount21BWD/($count3/2);

  #   $worksheet1->write($row-1-$tempRow+3, 6, $sum3/$count3);
 #  my $str =  ("=Average=("."$totalString".")");
  # $worksheet1->write($row-$tempRow+3, 6, $str);

  #	foreach  $row ($tempRow..$row-$tempRow) 
#{
 #   foreach  $col(6..7) 
    #{
     # $worksheet1->write($row, 6,  $sum3/$count3);
	  #$worksheet1->write($row, 7, "ms");
    #}
	#$row+=$row+$stageCount*2+4
#} 

	 $count3=0;
		}

if(($token cmp "[INFO]  Avg time per fwd+bwd")==0){
		$count2=0;
		}

		   if( (($token cmp "  ======= BEGIN FWD =======")==0)|| (($token cmp "  ======= BEGIN BWD =======")==0)){
		  $count=0;
		   }

		   if (($token cmp "  ======= BEGIN FWD =======")==0){
		   	   $flag4=0;
		   }

		   if(($token cmp "  ======= BEGIN BWD =======")==0){
		   $flag4=1;
		   }
		 

		  if (($token cmp "[INFO]  Model")==0){	
		  
		  $flag3=-1;
		  $count3++;
		  $stageCount=$count;

		  #  $worksheet1->write($row-$tempRow+3, 6, $avgModel);
	# $worksheet1->write($row-$tempRow+3, 7, "ms");

		  # print("=AVERAGE(($row-21,2):($row,2))");
		  # print("=AVERAGE(C$temp:C$row)");
		  #printf( "=AVERAGE(C%d:C%d)",$row-21,$row);
	#	  my $test1 = sprintf("=AVERAGE(C%d:C%d)",$row-$count+2-$tempRow+3,$row+1-$tempRow+3);
		  
	#	foreach  $row ($row-$count+1-$tempRow+3..$row-$tempRow+3) 
#{
 #   foreach  $col(6..7) 
  #  {
   #    $worksheet1->write($row, 6, $test1);
	#   $worksheet1->write($row, 7, "ms");
    #}
	#$count=0;
#} 
                                 }

if ($count==1){
 $flag32=-1;
}
if($count==2){
 $flag33=-1;
}if ($count==3){
 $flag34=-1;
}
if($count==4){
  $flag35=-1;
}if ($count==5){
 $flag36=-1;
}
if($count==6){
 $flag37=-1;
}if ($count==7){
 $flag38=-1;
}
if($count==8){
 $flag39=-1;
}if ($count==9){
 $flag40=-1;
}
if($count==10){
 $flag41=-1;
}if ($count==11){
 $flag42=-1;
}
if($count==12){
 $flag43=-1;
}if ($count==13){
 $flag44=-1;
}if($count==14){
 $flag45=-1;
}if ($count==15){
 $flag46=-1;
}
if($count==16){
 $flag47=-1;
}if ($count==17){
 $flag48=-1;
}
if($count==18){
 $flag49=-1;
}if ($count==19){
 $flag50=-1;
}
if($count==20){
 $flag51=-1;
}if($count==21){
 $flag52=-1;
}


            $col++;  

        }
        $row++; 
		$count++; 
		}
        open (TABFILE, 'alexnet_1.log') or die "alexnet_1.log: $!";
        $row=0;
  }









      my $row11 = 0;
    my $rowcount11=0;
	
	 my $count211=1;
	my $flag11=0;
	my $tempRow11=0;

	my $flag411=2;
    my $stageCount11=0;

	my $flag311=0;
	my $count311=0;
	my $sum311=0;
	my $avgModel11= 0;

	

  
     while($count211>0)
      {
       while (<TABFILE>) {
       chomp;
        my @Fld = split('     ');
        print "@Fld\n";
        my $col11 = 0;
	    foreach my $token11 (@Fld) {
		   if(($token11 cmp "[INFO]  Begin warmup runs")==0){
		  $flag11=1;
		  $tempRow11=$row11;
		   }

		  if($flag11==1){
 $worksheet1->write($row11-$tempRow11+3, $col11, $token11);
 }


if(($token11 cmp "[INFO]  Avg time per fwd+bwd")==0){
		$count211=0;
		}

		    if( (($token11 cmp "  ======= BEGIN FWD =======")==0)|| (($token11 cmp "  ======= BEGIN BWD =======")==0)){
		  $count11=0;
		   }

		   if (($token11 cmp "  ======= BEGIN FWD =======")==0){
		   	   $flag411=0;
		   }

		   if(($token11 cmp "  ======= BEGIN BWD =======")==0){
		   $flag411=1;
		   }
		  #  (($token cmp "  ======= BEGIN FWD =======")==0)


		  if (($token11 cmp "[INFO]  Model")==0){	
	
		
	if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgModelBWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgModelFWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
		  # print("=AVERAGE(($row-21,2):($row,2))");
		  # print("=AVERAGE(C$temp:C$row)");
		  #printf( "=AVERAGE(C%d:C%d)",$row-21,$row);
	#	  my $test1 = sprintf("=AVERAGE(C%d:C%d)",$row-$count+2-$tempRow+3,$row+1-$tempRow+3);
		  
	#	foreach  $row ($row-$count+1-$tempRow+3..$row-$tempRow+3) 
#{
 #   foreach  $col(6..7) 
  #  {
   #    $worksheet1->write($row, 6, $test1);
	#   $worksheet1->write($row, 7, "ms");
    #}
	#$count=0;
#} 
}



if ($count11==1){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount1BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount1FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==2){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount2BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount2FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==3){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount3BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount3FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==4){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount4BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount4FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==5){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount5BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount5FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==6){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount6BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount6FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==7){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount7BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount7FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==8){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount8BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount8FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==9){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount9BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount9FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==10){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount10BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount10FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==11){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount11BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount11FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==12){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount12BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount12FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==13){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount13BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount13FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if($count11==14){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount14BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount14FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==15){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount15BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount15FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==16){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount16BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount16FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==17){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount17BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount17FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==18){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount18BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount18FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if ($count11==19){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount19BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount19FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==20){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount20BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount20FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}if($count11==21){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount21BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount21FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}




            $col11++;  

        }
        $row11++; 
		$count11++;
		}
        open (TABFILE, 'alexnet_1.log') or die "alexnet_1.log: $!";
        $row11=0;
  }
























open(IN, "alexnet_2.log");
#print scalar(@str);
#end counting the no.of records
close(IN);
open (TABFILE, 'alexnet_2.log') or die "alexnet_2.log: $!";

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

	#	  my $test3 = sprintf("=(G%d/I%d)*100-100",$row2-$count22+2-$tempRow2+3,$row2-$count22+2-$tempRow2+3);

	#	foreach  $row2 ($row2-$count22+1-$tempRow2+3..$row2-$tempRow2+3) 
#{
 #   foreach  $col2(8..11) 
  #  {
   #    $worksheet1->write($row2, 8, $test2);
	#   $worksheet1->write($row2, 9, "ms");
	 #  $worksheet1->write($row2,10, $test3);
	   #positive or negative (-100 +100)
	   
    #}
	#$count22=0;
#} 
}
            $col2++;  
        }
        $row2++; 
		$count22++; 
		}
        open (TABFILE, 'alexnet_2.log') or die "alexnet_2.log: $!";
        $row2=0;
  }



   