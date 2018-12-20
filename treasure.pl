 #!/usr/bin/perl 
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
    my $workbook  = Spreadsheet::WriteExcel->new('treasure2_colour.xls');

	 my $worksheet1 = $workbook->add_worksheet();
	 $worksheet1->set_column( 'A:B', 28 );
	 $worksheet1->set_column( 'C:D', 13 );
	  $worksheet1->set_column( 'E:F', 6 );
	  $worksheet1->set_column( 'G:K', 7 );
	 my $count11=0;
	 my $count2222=0;

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
	my $avgCount22FWD= 0;
	my $sumCount22FWD= 0;
    my $avgCount22BWD= 0;
	my $sumCount22BWD= 0;
	my $avgCount23FWD= 0;
	my $sumCount23FWD= 0;
    my $avgCount23BWD= 0;
	my $sumCount23BWD= 0;
	my $avgCount24FWD= 0;
	my $sumCount24FWD= 0;
    my $avgCount24BWD= 0;
	my $sumCount24BWD= 0;
	my $avgCount25FWD= 0;
	my $sumCount25FWD= 0;
    my $avgCount25BWD= 0;
	my $sumCount25BWD= 0;
	my $avgCount26FWD= 0;
	my $sumCount26FWD= 0;
    my $avgCount26BWD= 0;
	my $sumCount26BWD= 0;
	my $avgCount27FWD= 0;
	my $sumCount27FWD= 0;
    my $avgCount27BWD= 0;
	my $sumCount27BWD= 0;



	my $format = $workbook->add_format();    
 $format->set_bold();                  
 $format->set_color('purple');            
 $format->set_align('center');  

 my $format2 = $workbook->add_format();    
  $format2->set_bold();                  
 $format2->set_color('blue');            
 $format2->set_align('center');  

  my $format3 = $workbook->add_format();    
  $format3->set_bold();                  
 $format3->set_color('red');            


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
$worksheet1->write( 3, 2, "New Time (ms)",  $format); 
$worksheet1->write( 3, 3, "Last Time (ms)",  $format); 
 $worksheet1->write( 3, 4, "New_AVG",  $format); 
$worksheet1->write(3, 5, "Last_AVG", $format); 
$worksheet1->write(3, 6, "Error (New / Last Time) (+/- %)", $format); 
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
		      if (($token cmp "[INFO]")==0){
			  
			  }

		    if (($token cmp "  ======= BEGIN FWD =======")==0){
			 $worksheet1->write($row-$tempRow+3, 0, "BEGIN FWD",  $format2); 
			}
			  if(($token cmp "  ======= BEGIN BWD =======")==0){
		   $worksheet1->write($row-$tempRow+3, 0, "BEGIN BWD", $format2); 
		   }
		     if ((($token cmp "  ======= BEGIN FWD =======")!=0)&&(($token cmp "  ======= BEGIN BWD =======")!=0)&&(($token cmp "[INFO]")!=0)&&(($token cmp "ms")!=0)){
  if (($token cmp "[INFO]  Model")==0){	
 $worksheet1->write($row-$tempRow+3, $col, $token,$format3);}
  if (($token cmp "[INFO]  Model")!=0){	
   $worksheet1->write($row-$tempRow+3, $col, $token);
  }
 }
  if($count==1){
 if ($flag4==1){
 	 $sumCount1BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount1FWD+=$token;}
 }

  if($count==2){
 if ($flag4==1){
 	 $sumCount2BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount2FWD+=$token;}
 }

 if($count==3){
 if ($flag4==1){
 	 $sumCount3BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount3FWD+=$token;}
 }

  if($count==4){
 if ($flag4==1){
 	 $sumCount4BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount4FWD+=$token;}
 }

  if($count==5){
 if ($flag4==1){
 	 $sumCount5BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount5FWD+=$token;}
 }

  if($count==6){
 if ($flag4==1){
 	 $sumCount6BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount6FWD+=$token;}
 }

  if($count==7){
 if ($flag4==1){
 	 $sumCount7BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount7FWD+=$token;}
 }

  if($count==8){
 if ($flag4==1){
 	 $sumCount8BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount8FWD+=$token;}
 }

  if($count==9){
 if ($flag4==1){
 	 $sumCount9BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount9FWD+=$token;}
 }

  if($count==10){
 if ($flag4==1){
 	 $sumCount10BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount10FWD+=$token;}
 }

  if($count==11){
 if ($flag4==1){
 	 $sumCount11BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount11FWD+=$token;}
 }

  if($count==12){
 if ($flag4==1){
 	 $sumCount12BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount12FWD+=$token;}
 }

  if($count==13){
 if ($flag4==1){
 	 $sumCount13BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount13FWD+=$token;}
 }

  if($count==14){
 if ($flag4==1){
 	 $sumCount14BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount14FWD+=$token;}
 }

  if($count==15){
 if ($flag4==1){
 	 $sumCount15BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount15FWD+=$token;}
 }

  if($count==16){
 if ($flag4==1){
 	 $sumCount16BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount16FWD+=$token;}
 }

  if($count==17){
 if ($flag4==1){
 	 $sumCount17BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount17FWD+=$token;}
 }

  if($count==18){
 if ($flag4==1){
 	 $sumCount18BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount18FWD+=$token;}
 }

  if($count==19){
 if ($flag4==1){
 	 $sumCount19BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount19FWD+=$token;}
 }
  if($count==20){
 if ($flag4==1){
 	 $sumCount20BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount20FWD+=$token;}
 }

  if($count==21){
 if ($flag4==1){
 	 $sumCount21BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount21FWD+=$token;}
 }

   if($count==22){
 if ($flag4==1){
 	 $sumCount22BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount22FWD+=$token;}
 }
  if($count==23){
 if ($flag4==1){
 	 $sumCount23BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount23FWD+=$token;}
 }

  if($count==24){
 if ($flag4==1){
 	 $sumCount24BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount24FWD+=$token;}
 }
  if($count==25){
 if ($flag4==1){
 	 $sumCount25BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount25FWD+=$token;}
 }

  if($count==26){
 if ($flag4==1){
 	 $sumCount26BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount26FWD+=$token;}
 }
   if($count==27){
 if ($flag4==1){
 	 $sumCount27BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount27FWD+=$token;}
 }


 }

 if(($token cmp "[INFO]  Avg time per fwd")==0){
		
		 # my $test1 = sprintf("=AVERAGE($totalString)");


		   $avgCount1FWD= $sumCount1FWD/($count3/2);
		   $avgCount1BWD= $sumCount1BWD/($count3/2);

		 #  $avgCount1FWD =sprintf("%.4f",$$avgCount1FWD); 

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

		   
		     $avgCount22FWD= $sumCount22FWD/($count3/2);
		   $avgCount22BWD= $sumCount22BWD/($count3/2);

		   $avgCount23FWD= $sumCount23FWD/($count3/2);
		   $avgCount23BWD= $sumCount23BWD/($count3/2);

		     $avgCount24FWD= $sumCount24FWD/($count3/2);
		   $avgCount24BWD= $sumCount24BWD/($count3/2);

		   $avgCount25FWD= $sumCount25FWD/($count3/2);
		   $avgCount25BWD= $sumCount25BWD/($count3/2);

		     $avgCount26FWD= $sumCount26FWD/($count3/2);
		   $avgCount26BWD= $sumCount26BWD/($count3/2);

		     $avgCount27FWD= $sumCount27FWD/($count3/2);
		   $avgCount27BWD= $sumCount27BWD/($count3/2);
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
		  
		 # $flag3=-1;
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
 #$worksheet1->write($row11-$tempRow11+3, $col11, $token11);
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


		
if ($count11==1){
if(	$flag411==1){
  

		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount1BWD);
			 }if(	$flag411==0){

		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount1FWD);
	
	 }
}
if($count11==2){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount2BWD);
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount2FWD);
	 }
}if ($count11==3){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount3BWD);
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount3FWD);
	 }
}
if($count11==4){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount4BWD);
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount4FWD);
	 }
}if ($count11==5){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount5BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount5FWD);

	 }
}
if($count11==6){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount6BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount6FWD);
	
	 }
}if ($count11==7){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount7BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount7FWD);
	 
	 }
}
if($count11==8){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount8BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount8FWD);
	
	 }
}if ($count11==9){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount9BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount9FWD);
	
	 }
}
if($count11==10){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount10BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount10FWD);
	
	 }
}if ($count11==11){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount11BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount11FWD);

	 }
}
if($count11==12){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount12BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount12FWD);
	
	 }
}if ($count11==13){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount13BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount13FWD);
	
	 }
}if($count11==14){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount14BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount14FWD);
	
	 }
}if ($count11==15){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount15BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount15FWD);
	
	 }
}
if($count11==16){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount16BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount16FWD);

	 }
}if ($count11==17){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount17BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount17FWD);
	
	 }
}
if($count11==18){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount18BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount18FWD);
	
	 }
}if ($count11==19){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount19BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount19FWD);
	
	 }
}
if($count11==20){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount20BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount20FWD);

	 }
}if($count11==21){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount21BWD);
	
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount21FWD);
	
	 }
}
if($count11==22){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount22BWD);

	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount22FWD);

	 }
}
if($count11==23){
if(	$flag411==1){
if($avgCount23BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount23BWD);

	 }}
	 if(	$flag411==0){
	 if($avgCount23FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount23FWD);
	
	 }
	 }
}
if($count11==24){
if(	$flag411==1){
if($avgCount24BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount24BWD);
	}
	 }if(	$flag411==0){
	 if($avgCount24FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount24FWD);
	}
	 }
}
if($count11==25){
if(	$flag411==1){
if($avgCount25BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount25BWD);
	}
	 }if(	$flag411==0){
	 if($avgCount25FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount25FWD);
	}
	 }
}
if($count11==26){
if(	$flag411==1){
if($avgCount26BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount26BWD);
}
	 }if(	$flag411==0){
	 if($avgCount26FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount26FWD);
	}
	 }
}
if($count11==27){
if(	$flag411==1){
if($avgCount27BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount27BWD);
}
	 }if(	$flag411==0){
	 if($avgCount27FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 4, $avgCount27FWD);
	}
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




################################################################################################################################################

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


	my $flag42=2;
    my $stageCount2=0;

	my $flag32=0;
	my $count32=0;


	my $avgCount1FWD2= 0;
	my $sumCount1FWD2= 0;
    my $avgCount1BWD2= 0;
	my $sumCount1BWD2= 0;

	my $avgCount2FWD2= 0;
	my $sumCount2FWD2= 0;
    my $avgCount2BWD2= 0;
	my $sumCount2BWD2= 0;
	my $avgCount3FWD2= 0;
	my $sumCount3FWD2= 0;
    my $avgCount3BWD2= 0;
	my $sumCount3BWD2= 0;
	my $avgCount4FWD2= 0;
	my $sumCount4FWD2= 0;
    my $avgCount4BWD2= 0;
	my $sumCount4BWD2= 0;
	my $avgCount5FWD2= 0;
	my $sumCount5FWD2= 0;
    my $avgCount5BWD2= 0;
	my $sumCount5BWD2= 0;
	my $avgCount6FWD2= 0;
	my $sumCount6FWD2= 0;
    my $avgCount6BWD2= 0;
	my $sumCount6BWD2= 0;
	my $avgCount7FWD2= 0;
	my $sumCount7FWD2= 0;
    my $avgCount7BWD2= 0;
	my $sumCount7BWD2= 0;
	my $avgCount8FWD2= 0;
	my $sumCount8FWD2= 0;
    my $avgCount8BWD2= 0;
	my $sumCount8BWD2= 0;
	my $avgCount9FWD2= 0;
	my $sumCount9FWD2= 0;
    my $avgCount9BWD2= 0;
	my $sumCount9BWD2= 0;
	my $avgCount10FWD2= 0;
	my $sumCount10FWD2= 0;
    my $avgCount10BWD2= 0;
	my $sumCount10BWD2= 0;
	my $avgCount11FWD2= 0;
	my $sumCount11FWD2= 0;
    my $avgCount11BWD2= 0;
	my $sumCount11BWD2= 0;
	my $avgCount12FWD2= 0;
	my $sumCount12FWD2= 0;
    my $avgCount12BWD2= 0;
	my $sumCount12BWD2= 0;
	my $avgCount13FWD2= 0;
	my $sumCount13FWD2= 0;
    my $avgCount13BWD2= 0;
	my $sumCount13BWD2= 0;
	my $avgCount14FWD2= 0;
	my $sumCount14FWD2= 0;
    my $avgCount14BWD2= 0;
	my $sumCount14BWD2= 0;
	my $avgCount15FWD2= 0;
	my $sumCount15FWD2= 0;
    my $avgCount15BWD2= 0;
	my $sumCount15BWD2= 0;
	my $avgCount16FWD2= 0;
	my $sumCount16FWD2= 0;
    my $avgCount16BWD2= 0;
	my $sumCount16BWD2= 0;
	my $avgCount17FWD2= 0;
	my $sumCount17FWD2= 0;
    my $avgCount17BWD2= 0;
	my $sumCount17BWD2= 0;
	my $avgCount18FWD2= 0;
	my $sumCount18FWD2= 0;
    my $avgCount18BWD2= 0;
	my $sumCount18BWD2= 0;
	my $avgCount19FWD2= 0;
	my $sumCount19FWD2= 0;
    my $avgCount19BWD2= 0;
	my $sumCount19BWD2= 0;
	my $avgCount20FWD2= 0;
	my $sumCount20FWD2= 0;
    my $avgCount20BWD2= 0;
	my $sumCount20BWD2= 0;
	my $avgCount21FWD2= 0;
	my $sumCount21FWD2= 0;
    my $avgCount21BWD2= 0;
	my $sumCount21BWD2= 0;
	 my $avgCount22FWD2= 0;
	my $sumCount22FWD2= 0;
    my $avgCount22BWD2= 0;
	my $sumCount22BWD2= 0;
	my $avgCount23FWD2= 0;
	my $sumCount23FWD2= 0;
    my $avgCount23BWD2= 0;
	my $sumCount23BWD2= 0;
	my $avgCount24FWD2= 0;
	my $sumCount24FWD2= 0;
    my $avgCount24BWD2= 0;
	my $sumCount24BWD2= 0;
    my $avgCount25FWD2= 0;
	my $sumCount25FWD2= 0;
    my $avgCount25BWD2= 0;
	my $sumCount25BWD2= 0;
	my $avgCount26FWD2= 0;
	my $sumCount26FWD2= 0;
    my $avgCount26BWD2= 0;
	my $sumCount26BWD2= 0;
	my $avgCount27FWD2= 0;
	my $sumCount27FWD2= 0;
    my $avgCount27BWD2= 0;
	my $sumCount27BWD2= 0;

	#my $col=0;

     while($count222>0)
      {
    
       while (<TABFILE>) {
       chomp;
        my @Fld = split('     ');
        print "@Fld\n";
        my $col2 = 1;
	    foreach my $token2 (@Fld) {
		
		   if(($token2 cmp "[INFO]  Begin warmup runs")==0){
		  $flag2=1;
		  $tempRow2=$row2;
		   }
		   
		  if(($flag2==1) &&(($token2 cmp "[INFO]")!=0) &&(($token2 cmp "[INFO]  Begin Timings")!=0)){

		     if ((($token2 cmp "  ======= BEGIN FWD =======")!=0)&&(($token2 cmp "  ======= BEGIN BWD =======")!=0)&&(($token2 cmp "ms")!=0)){
			  if (($token2 cmp "[INFO]  Model")==0){	
$worksheet1->write($row2-$tempRow2+3, $col2, $token2,$format3);}
  if (($token2 cmp "[INFO]  Model")!=0){
  $worksheet1->write($row2-$tempRow2+3, $col2, $token2);
  }
 }





  if($count22==1){
 if ($flag42==1){
 	 $sumCount1BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount1FWD2+=$token2;}
 }

  if($count22==2){
 if ($flag42==1){
 	 $sumCount2BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount2FWD2+=$token2;}
 }

 if($count22==3){
 if ($flag42==1){
 	 $sumCount3BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount3FWD2+=$token2;}
 }

  if($count22==4){
 if ($flag42==1){
 	 $sumCount4BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount4FWD2+=$token2;}
 }

  if($count22==5){
 if ($flag42==1){
 	 $sumCount5BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount5FWD2+=$token2;}
 }

  if($count22==6){
 if ($flag42==1){
 	 $sumCount6BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount6FWD2+=$token2;}
 }

  if($count22==7){
 if ($flag42==1){
 	 $sumCount7BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount7FWD2+=$token2;}
 }

  if($count22==8){
 if ($flag42==1){
 	 $sumCount8BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount8FWD2+=$token2;}
 }

  if($count22==9){
 if ($flag42==1){
 	 $sumCount9BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount9FWD2+=$token2;}
 }

  if($count22==10){
 if ($flag42==1){
 	 $sumCount10BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount10FWD2+=$token2;}
 }

  if($count22==11){
 if ($flag42==1){
 	 $sumCount11BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount11FWD2+=$token2;}
 }

  if($count22==12){
 if ($flag42==1){
 	 $sumCount12BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount12FWD2+=$token2;}
 }

  if($count22==13){
 if ($flag42==1){
 	 $sumCount13BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount13FWD2+=$token2;}
 }

  if($count22==14){
 if ($flag42==1){
 	 $sumCount14BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount14FWD2+=$token2;}
 }

  if($count22==15){
 if ($flag42==1){
 	 $sumCount15BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount15FWD2+=$token2;}
 }

  if($count22==16){
 if ($flag42==1){
 	 $sumCount16BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount16FWD2+=$token2;}
 }

  if($count22==17){
 if ($flag42==1){
 	 $sumCount17BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount17FWD2+=$token2;}
 }

  if($count22==18){
 if ($flag42==1){
 	 $sumCount18BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount18FWD2+=$token2;}
 }

  if($count22==19){
 if ($flag42==1){
 	 $sumCount19BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount19FWD2+=$token2;}
 }
  if($count22==20){
 if ($flag42==1){
 	 $sumCount20BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount20FWD2+=$token2;}
 }

  if($count22==21){
 if ($flag42==1){
 	 $sumCount21BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount21FWD2+=$token2;}
 }



  if($count22==22){
 if ($flag42==1){
 	 $sumCount22BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount22FWD2+=$token2;}
 }
  if($count22==23){
 if ($flag42==1){
 	 $sumCount23BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount23FWD2+=$token2;}
 }

  if($count22==24){
 if ($flag42==1){
 	 $sumCount24BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount24FWD2+=$token2;}
 }

  if($count22==25){
 if ($flag42==1){
 	 $sumCount25BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount25FWD2+=$token2;}
 }
 if($count22==26){
 if ($flag42==1){
 	 $sumCount26BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount26FWD2+=$token2;}
 }

  if($count22==27){
 if ($flag42==1){
 	 $sumCount27BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount27FWD2+=$token2;}
 }

 }

if(($token2 cmp "[INFO]  Avg time per fwd+bwd")==0){
my $test6 = sprintf("=(C%d/D%d)*100-100",$row2+1-$tempRow2+3,$row2+1-$tempRow2+3);
		  $worksheet1->write($row2-$tempRow2+3,6, $test6);



		     $avgCount1FWD2= $sumCount1FWD2/($count32/2);
		   $avgCount1BWD2= $sumCount1BWD2/($count32/2);

		   $avgCount2FWD2= $sumCount2FWD2/($count32/2);
		   $avgCount2BWD2= $sumCount2BWD2/($count32/2);

		   $avgCount3FWD2= $sumCount3FWD2/($count32/2);
		   $avgCount3BWD2= $sumCount3BWD2/($count32/2);

		   $avgCount4FWD2= $sumCount4FWD2/($count32/2);
		   $avgCount4BWD2= $sumCount4BWD2/($count32/2);

		   $avgCount5FWD2= $sumCount5FWD2/($count32/2);
		   $avgCount5BWD2= $sumCount5BWD2/($count32/2);

		    $avgCount6FWD2= $sumCount6FWD2/($count32/2);
		   $avgCount6BWD2= $sumCount6BWD2/($count32/2);

		     $avgCount7FWD2= $sumCount7FWD2/($count32/2);
		   $avgCount7BWD2= $sumCount7BWD2/($count32/2);

		   $avgCount8FWD2= $sumCount8FWD2/($count32/2);
		   $avgCount8BWD2= $sumCount8BWD2/($count32/2);

		   $avgCount9FWD2= $sumCount9FWD2/($count32/2);
		   $avgCount9BWD2= $sumCount9BWD2/($count32/2);

		   $avgCount10FWD2= $sumCount10FWD2/($count32/2);
		   $avgCount10BWD2= $sumCount10BWD2/($count32/2);

		    $avgCount11FWD2= $sumCount11FWD2/($count32/2);
		   $avgCount11BWD2= $sumCount11BWD2/($count32/2);

		     $avgCount12FWD2= $sumCount12FWD2/($count32/2);
		   $avgCount12BWD2= $sumCount12BWD2/($count32/2);

		   $avgCount13FWD2= $sumCount13FWD2/($count32/2);
		   $avgCount13BWD2= $sumCount13BWD2/($count32/2);

		   $avgCount14FWD2= $sumCount14FWD2/($count32/2);
		   $avgCount14BWD2= $sumCount14BWD2/($count32/2);

		   $avgCount15FWD2= $sumCount15FWD2/($count32/2);
		   $avgCount15BWD2= $sumCount15BWD2/($count32/2);

		    $avgCount16FWD2= $sumCount16FWD2/($count32/2);
		   $avgCount16BWD2= $sumCount16BWD2/($count32/2);

		     $avgCount17FWD2= $sumCount17FWD2/($count32/2);
		   $avgCount17BWD2= $sumCount17BWD2/($count32/2);

		   $avgCount18FWD2= $sumCount18FWD2/($count32/2);
		   $avgCount18BWD2= $sumCount18BWD2/($count32/2);

		   $avgCount19FWD2= $sumCount19FWD2/($count32/2);
		   $avgCount19BWD2= $sumCount19BWD2/($count32/2);

		   $avgCount20FWD2= $sumCount20FWD2/($count32/2);
		   $avgCount20BWD2= $sumCount20BWD2/($count32/2);

		    $avgCount21FWD2= $sumCount21FWD2/($count32/2);
		   $avgCount21BWD2= $sumCount21BWD2/($count32/2);

		   
		   $avgCount22FWD2= $sumCount22FWD2/($count32/2);
		   $avgCount22BWD2= $sumCount22BWD2/($count32/2);
		   
		   	   $avgCount23FWD2= $sumCount23FWD2/($count32/2);
		   $avgCount23BWD2= $sumCount23BWD2/($count32/2);

		    $avgCount24FWD2= $sumCount24FWD2/($count32/2);
		   $avgCount24BWD2= $sumCount24BWD2/($count32/2);

		   $avgCount25FWD2= $sumCount25FWD2/($count32/2);
		   $avgCount25BWD2= $sumCount25BWD2/($count32/2);

		   	   $avgCount26FWD2= $sumCount26FWD2/($count32/2);
		   $avgCount26BWD2= $sumCount26BWD2/($count32/2);

		    $avgCount27FWD2= $sumCount27FWD2/($count32/2);
		   $avgCount27BWD2= $sumCount27BWD2/($count32/2);




		$count222=0;
		}

		if((($token2 cmp "[INFO]  Avg time per fwd")==0)||(($token2 cmp "[INFO]  Avg time per bwd")==0)){
	
		 my $test45 = sprintf("=(C%d/D%d)*100-100",$row2+1-$tempRow2+3,$row2+1-$tempRow2+3);
		  $worksheet1->write($row2-$tempRow2+3,6, $test45);
		}

		   if( (($token2 cmp "  ======= BEGIN FWD =======")==0)|| (($token2 cmp "  ======= BEGIN BWD =======")==0)){
		  $count22=0;
		   }

		    if (($token2 cmp "  ======= BEGIN FWD =======")==0){
		   	   $flag42=0;
		   }

		   if(($token2 cmp "  ======= BEGIN BWD =======")==0){
		   $flag42=1;
		   }


		  if (($token2 cmp "[INFO]  Model")==0){		   
		  # print("=AVERAGE(($row-21,2):($row,2))");
		  # print("=AVERAGE(C$temp:C$row)");
		  #printf( "=AVERAGE(C%d:C%d)",$row-21,$row);
	#	  my $test2 = sprintf("=AVERAGE(E%d:E%d)",$row2-$count22+2-$tempRow2+3,$row2+1-$tempRow2+3);
		 # print ($test1);

		
		  $count32++;
		  $stageCount2=$count22;



		   

	#	foreach  $row2 ($row2-$count22+1-$tempRow2+3..$row2-$tempRow2+3) 
#{
 #   foreach  $col2(8..11) 
  #  {
   #    $worksheet1->write($row2, 8, $test2);
	#   $worksheet1->write($row2, 9, "ms");
	 # 
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



   

      my $row1122 = 0;
    my $rowcount1122=0;
	
	 my $count21122=1;
	my $flag1122=0;
	my $tempRow1122=0;

	my $flag41122=2;
    my $stageCount1122=0;

	my $flag31122=0;
	my $count31122=0;
	my $sum31122=0;
	my $avgModel1122= 0;

  
     while($count21122>0)
      {
       while (<TABFILE>) {
       chomp;
        my @Fld = split('     ');
        print "@Fld\n";
        my $col1122 = 0;
	    foreach my $token1122 (@Fld) {
		   if(($token1122 cmp "[INFO]  Begin warmup runs")==0){
		  $flag1122=1;
		  $tempRow1122=$row1122;
		   }

		  if($flag1122==1){
 #$worksheet1->write($row1122-$tempRow1122+3, $col1122, $token1122);
 }

 
	my $test3 = sprintf("=(E%d/F%d)*100-100",$row1122+1-$tempRow1122+3,$row1122+1-$tempRow1122+3);

if(($token1122 cmp "[INFO]  Avg time per fwd+bwd")==0){
		$count21122=0;
		}

		    if( (($token1122 cmp "  ======= BEGIN FWD =======")==0)|| (($token1122 cmp "  ======= BEGIN BWD =======")==0)){
		  $count22=0;
		   }

		   if (($token1122 cmp "  ======= BEGIN FWD =======")==0){
		   	   $flag41122=0;
		   }

		   if(($token1122 cmp "  ======= BEGIN BWD =======")==0){
		   $flag41122=1;
		   }
		  #  (($token cmp "  ======= BEGIN FWD =======")==0)




 
my $num = 0;			

if ($count22==1){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount1BWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount1FWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==2){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount2BWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount2FWD2);
 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==3){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount3BWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount3FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==4){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount4BWD2);
 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount4FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==5){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount5BWD2);
	 $num = ord($test3);		
	  if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount5FWD2);
 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==6){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount6BWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount6FWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==7){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount7BWD2);
 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount7FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==8){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount8BWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount8FWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==9){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount9BWD2);
			 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount9FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==10){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount10BWD2);
 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount10FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==11){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount11BWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount11FWD2);
 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==12){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount12BWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount12FWD2);
			 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==13){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount13BWD2);
 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount13FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if($count22==14){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount14BWD2);
 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount14FWD2);
			 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==15){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount15BWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount15FWD2);
 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==16){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount16BWD2);
			 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount16FWD2);
			 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==17){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount17BWD2);
			 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount17FWD2);
			 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==18){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount18BWD2);
			 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount18FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if ($count22==19){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount19BWD2);
			 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount19FWD2);
			 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}
if($count22==20){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount20BWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount20FWD2);
	 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }
}if($count22==21){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount21BWD2);
			 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount21FWD2);
			 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	  
	 }
}

if($count22==22){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount22BWD2);
			 $num = ord($test3);		
	if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount22FWD2);
	 $num = ord($test3);		
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	  
	 }
}


if($count22==23){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount23BWD2!=0){

		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount23BWD2);
	
	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}}
	 }if(	$flag41122==0){
	 if($avgCount23FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount23FWD2);

	 if($num>0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format2);}
	  if($num<0){
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3,$format3);}
	  }
	 }
}
}

if($count22==24){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount24BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount24BWD2);

	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount24FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount24FWD2);

	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);
	  }
	 }}
}

if($count22==25){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount25BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount25BWD2);

	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount25FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount25FWD2);

	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);}
	  
	 }
}}

if($count22==26){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount26BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount26BWD2);

	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount26FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount26FWD2);
	
	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);
	  }
	 }}
}

if($count22==27){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount27BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount27BWD2);

	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount27FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 5, $avgCount27FWD2);

	  $worksheet1->write($row1122-$tempRow1122+3,6, $test3);}
	  
	 }}
}

            $col1122++;  

        }
        $row1122++; 
		$count22++;
		}
        open (TABFILE, 'alexnet_1.log') or die "alexnet_1.log: $!";
        $row1122=0;
  }






#  $num = ord($char);
#$char = chr($num); 
#在printf跟sprintf中使用%c这个格式也可以把一个数值转换成字符。
#$char = sprintf("%c", $num); # slower than chr($num)
#printf("Number %d is character %c\n", $num, $num);
#Number 101 is character e 
#在pack跟unpack里面使用C*这个Template可以快速的转换很多8 bits字节。同样，转换Unicode字符可以使用U*这个模板。
#@bytes = unpack("C*", $string);
#$string = pack("C*", @bytes);

#$unistr = pack("U4",0x24b6,0x24b7,0x24b8,0x24b9);
#@unichars = unpack("U*", $unistr); 