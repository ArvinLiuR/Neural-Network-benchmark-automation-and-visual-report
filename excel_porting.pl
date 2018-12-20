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
    my $workbook  = Spreadsheet::WriteExcel->new('treasure2_plus_aug3rd.xls');

	 my $worksheet1 = $workbook->add_worksheet();
	 $worksheet1->set_column( 'A:B', 28 );
	 $worksheet1->set_column( 'C:K', 8 );
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
	my $avgCount28FWD= 0;
	my $sumCount28FWD= 0;
    my $avgCount28BWD= 0;
	my $sumCount28BWD= 0;
	my $avgCount29FWD= 0;
	my $sumCount29FWD= 0;
    my $avgCount29BWD= 0;
	my $sumCount29BWD= 0;
	my $avgCount30FWD= 0;
	my $sumCount30FWD= 0;
    my $avgCount30BWD= 0;
	my $sumCount30BWD= 0;
	my $avgCount31FWD= 0;
	my $sumCount31FWD= 0;
    my $avgCount31BWD= 0;
	my $sumCount31BWD= 0;
    my $avgCount32FWD= 0;
	my $sumCount32FWD= 0;
    my $avgCount32BWD= 0;
	my $sumCount32BWD= 0;
	my $avgCount33FWD= 0;
	my $sumCount33FWD= 0;
    my $avgCount33BWD= 0;
	my $sumCount33BWD= 0;
    my $avgCount34FWD= 0;
	my $sumCount34FWD= 0;
    my $avgCount34BWD= 0;
	my $sumCount34BWD= 0;
    my $avgCount35FWD= 0;
	my $sumCount35FWD= 0;
    my $avgCount35BWD= 0;
	my $sumCount35BWD= 0;
    my $avgCount36FWD= 0;
	my $sumCount36FWD= 0;
    my $avgCount36BWD= 0;
	my $sumCount36BWD= 0;
    my $avgCount37FWD= 0;
	my $sumCount37FWD= 0;
    my $avgCount37BWD= 0;
	my $sumCount37BWD= 0;
	my $avgCount38FWD= 0;
	my $sumCount38FWD= 0;
    my $avgCount38BWD= 0;
	my $sumCount38BWD= 0;
	my $avgCount39FWD= 0;
	my $sumCount39FWD= 0;
    my $avgCount39BWD= 0;
	my $sumCount39BWD= 0;
	my $avgCount40FWD= 0;
	my $sumCount40FWD= 0;
    my $avgCount40BWD= 0;
	my $sumCount40BWD= 0;
	my $avgCount41FWD= 0;
	my $sumCount41FWD= 0;
    my $avgCount41BWD= 0;
	my $sumCount41BWD= 0;
    my $avgCount42FWD= 0;
	my $sumCount42FWD= 0;
    my $avgCount42BWD= 0;
	my $sumCount42BWD= 0;
	my $avgCount43FWD= 0;
	my $sumCount43FWD= 0;
    my $avgCount43BWD= 0;
	my $sumCount43BWD= 0;
    my $avgCount44FWD= 0;
	my $sumCount44FWD= 0;
    my $avgCount44BWD= 0;
	my $sumCount44BWD= 0;
    my $avgCount45FWD= 0;
	my $sumCount45FWD= 0;
    my $avgCount45BWD= 0;
	my $sumCount45BWD= 0;
    my $avgCount46FWD= 0;
	my $sumCount46FWD= 0;
    my $avgCount46BWD= 0;
	my $sumCount46BWD= 0;
    my $avgCount47FWD= 0;
	my $sumCount47FWD= 0;
    my $avgCount47BWD= 0;
	my $sumCount47BWD= 0;
	my $avgCount48FWD= 0;
	my $sumCount48FWD= 0;
    my $avgCount48BWD= 0;
	my $sumCount48BWD= 0;
	my $avgCount49FWD= 0;
	my $sumCount49FWD= 0;
    my $avgCount49BWD= 0;
	my $sumCount49BWD= 0;
	my $avgCount50FWD= 0;
	my $sumCount50FWD= 0;
    my $avgCount50BWD= 0;
	my $sumCount50BWD= 0;

	my $avgCount51FWD= 0;
	my $sumCount51FWD= 0;
    my $avgCount51BWD= 0;
	my $sumCount51BWD= 0;
	my $avgCount52FWD= 0;
	my $sumCount52FWD= 0;
    my $avgCount52BWD= 0;
	my $sumCount52BWD= 0;
	my $avgCount53FWD= 0;
	my $sumCount53FWD= 0;
    my $avgCount53BWD= 0;
	my $sumCount53BWD= 0;
	my $avgCount54FWD= 0;
	my $sumCount54FWD= 0;
    my $avgCount54BWD= 0;
	my $sumCount54BWD= 0;
	my $avgCount55FWD= 0;
	my $sumCount55FWD= 0;
    my $avgCount55BWD= 0;
	my $sumCount55BWD= 0;
	my $avgCount56FWD= 0;
	my $sumCount56FWD= 0;
    my $avgCount56BWD= 0;
	my $sumCount56BWD= 0;
	my $avgCount57FWD= 0;
	my $sumCount57FWD= 0;
    my $avgCount57BWD= 0;
	my $sumCount57BWD= 0;
	my $avgCount58FWD= 0;
	my $sumCount58FWD= 0;
    my $avgCount58BWD= 0;
	my $sumCount58BWD= 0;
	my $avgCount59FWD= 0;
	my $sumCount59FWD= 0;
    my $avgCount59BWD= 0;
	my $sumCount59BWD= 0;
	my $avgCount60FWD= 0;
	my $sumCount60FWD= 0;
    my $avgCount60BWD= 0;
	my $sumCount60BWD= 0;

	my $avgCount61FWD= 0;
	my $sumCount61FWD= 0;
    my $avgCount61BWD= 0;
	my $sumCount61BWD= 0;
	my $avgCount62FWD= 0;
	my $sumCount62FWD= 0;
    my $avgCount62BWD= 0;
	my $sumCount62BWD= 0;
	my $avgCount63FWD= 0;
	my $sumCount63FWD= 0;
    my $avgCount63BWD= 0;
	my $sumCount63BWD= 0;
	my $avgCount64FWD= 0;
	my $sumCount64FWD= 0;
    my $avgCount64BWD= 0;
	my $sumCount64BWD= 0;
	my $avgCount65FWD= 0;
	my $sumCount65FWD= 0;
    my $avgCount65BWD= 0;
	my $sumCount65BWD= 0;
	my $avgCount66FWD= 0;
	my $sumCount66FWD= 0;
    my $avgCount66BWD= 0;
	my $sumCount66BWD= 0;
	my $avgCount67FWD= 0;
	my $sumCount67FWD= 0;
    my $avgCount67BWD= 0;
	my $sumCount67BWD= 0;
	my $avgCount68FWD= 0;
	my $sumCount68FWD= 0;
    my $avgCount68BWD= 0;
	my $sumCount68BWD= 0;
	my $avgCount69FWD= 0;
	my $sumCount69FWD= 0;
    my $avgCount69BWD= 0;
	my $sumCount69BWD= 0;
	my $avgCount70FWD= 0;
	my $sumCount70FWD= 0;
    my $avgCount70BWD= 0;
	my $sumCount70BWD= 0;

	my $avgCount71FWD= 0;
	my $sumCount71FWD= 0;
    my $avgCount71BWD= 0;
	my $sumCount71BWD= 0;
	my $avgCount72FWD= 0;
	my $sumCount72FWD= 0;
    my $avgCount72BWD= 0;
	my $sumCount72BWD= 0;
	my $avgCount73FWD= 0;
	my $sumCount73FWD= 0;
    my $avgCount73BWD= 0;
	my $sumCount73BWD= 0;
	my $avgCount74FWD= 0;
	my $sumCount74FWD= 0;
    my $avgCount74BWD= 0;
	my $sumCount74BWD= 0;
	my $avgCount75FWD= 0;
	my $sumCount75FWD= 0;
    my $avgCount75BWD= 0;
	my $sumCount75BWD= 0;
	my $avgCount76FWD= 0;
	my $sumCount76FWD= 0;
    my $avgCount76BWD= 0;
	my $sumCount76BWD= 0;
	my $avgCount77FWD= 0;
	my $sumCount77FWD= 0;
    my $avgCount77BWD= 0;
	my $sumCount77BWD= 0;
	my $avgCount78FWD= 0;
	my $sumCount78FWD= 0;
    my $avgCount78BWD= 0;
	my $sumCount78BWD= 0;
	my $avgCount79FWD= 0;
	my $sumCount79FWD= 0;
    my $avgCount79BWD= 0;
	my $sumCount79BWD= 0;
	my $avgCount80FWD= 0;
	my $sumCount80FWD= 0;
    my $avgCount80BWD= 0;
	my $sumCount80BWD= 0;

	my $avgCount81FWD= 0;
	my $sumCount81FWD= 0;
    my $avgCount81BWD= 0;
	my $sumCount81BWD= 0;
	my $avgCount82FWD= 0;
	my $sumCount82FWD= 0;
    my $avgCount82BWD= 0;
	my $sumCount82BWD= 0;
	my $avgCount83FWD= 0;
	my $sumCount83FWD= 0;
    my $avgCount83BWD= 0;
	my $sumCount83BWD= 0;
	my $avgCount84FWD= 0;
	my $sumCount84FWD= 0;
    my $avgCount84BWD= 0;
	my $sumCount84BWD= 0;
	my $avgCount85FWD= 0;
	my $sumCount85FWD= 0;
    my $avgCount85BWD= 0;
	my $sumCount85BWD= 0;
	my $avgCount86FWD= 0;
	my $sumCount86FWD= 0;
    my $avgCount86BWD= 0;
	my $sumCount86BWD= 0;
	my $avgCount87FWD= 0;
	my $sumCount87FWD= 0;
    my $avgCount87BWD= 0;
	my $sumCount87BWD= 0;
	my $avgCount88FWD= 0;
	my $sumCount88FWD= 0;
    my $avgCount88BWD= 0;
	my $sumCount88BWD= 0;
	my $avgCount89FWD= 0;
	my $sumCount89FWD= 0;
    my $avgCount89BWD= 0;
	my $sumCount89BWD= 0;
	my $avgCount90FWD= 0;
	my $sumCount90FWD= 0;
    my $avgCount90BWD= 0;
	my $sumCount90BWD= 0;

	my $avgCount91FWD= 0;
	my $sumCount91FWD= 0;
    my $avgCount91BWD= 0;
	my $sumCount91BWD= 0;
	my $avgCount92FWD= 0;
	my $sumCount92FWD= 0;
    my $avgCount92BWD= 0;
	my $sumCount92BWD= 0;
	my $avgCount93FWD= 0;
	my $sumCount93FWD= 0;
    my $avgCount93BWD= 0;
	my $sumCount93BWD= 0;
	my $avgCount94FWD= 0;
	my $sumCount94FWD= 0;
    my $avgCount94BWD= 0;
	my $sumCount94BWD= 0;
	my $avgCount95FWD= 0;
	my $sumCount95FWD= 0;
    my $avgCount95BWD= 0;
	my $sumCount95BWD= 0;
	my $avgCount96FWD= 0;
	my $sumCount96FWD= 0;
    my $avgCount96BWD= 0;
	my $sumCount96BWD= 0;
	my $avgCount97FWD= 0;
	my $sumCount97FWD= 0;
    my $avgCount97BWD= 0;
	my $sumCount97BWD= 0;
	my $avgCount98FWD= 0;
	my $sumCount98FWD= 0;
    my $avgCount98BWD= 0;
	my $sumCount98BWD= 0;
	my $avgCount99FWD= 0;
	my $sumCount99FWD= 0;
    my $avgCount99BWD= 0;
	my $sumCount99BWD= 0;
	my $avgCount100FWD= 0;
	my $sumCount100FWD= 0;
    my $avgCount100BWD= 0;
	my $sumCount100BWD= 0;

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
 
  if($count==28){
 if ($flag4==1){
 	 $sumCount28BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount28FWD+=$token;}
 }

  if($count==29){
 if ($flag4==1){
 	 $sumCount29BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount29FWD+=$token;}
 }
  if($count==30){
 if ($flag4==1){
 	 $sumCount30BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount30FWD+=$token;}
 }
 
  if($count==31){
 if ($flag4==1){
 	 $sumCount31BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount31FWD+=$token;}
 }

   if($count==32){
 if ($flag4==1){
 	 $sumCount32BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount32FWD+=$token;}
 }
  if($count==33){
 if ($flag4==1){
 	 $sumCount33BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount33FWD+=$token;}
 }

  if($count==34){
 if ($flag4==1){
 	 $sumCount34BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount34FWD+=$token;}
 }
  if($count==35){
 if ($flag4==1){
 	 $sumCount35BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount35FWD+=$token;}
 }

  if($count==36){
 if ($flag4==1){
 	 $sumCount36BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount36FWD+=$token;}
 }
   if($count==37){
 if ($flag4==1){
 	 $sumCount37BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount37FWD+=$token;}
 }
 
  if($count==38){
 if ($flag4==1){
 	 $sumCount38BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount38FWD+=$token;}
 }

  if($count==39){
 if ($flag4==1){
 	 $sumCount39BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount39FWD+=$token;}
 }
  if($count==40){
 if ($flag4==1){
 	 $sumCount40BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount40FWD+=$token;}
 }
 
  if($count==41){
 if ($flag4==1){
 	 $sumCount41BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount41FWD+=$token;}
 }

   if($count==42){
 if ($flag4==1){
 	 $sumCount42BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount42FWD+=$token;}
 }
  if($count==43){
 if ($flag4==1){
 	 $sumCount43BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount43FWD+=$token;}
 }

  if($count==44){
 if ($flag4==1){
 	 $sumCount44BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount44FWD+=$token;}
 }
  if($count==45){
 if ($flag4==1){
 	 $sumCount45BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount45FWD+=$token;}
 }

  if($count==46){
 if ($flag4==1){
 	 $sumCount46BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount46FWD+=$token;}
 }
   if($count==47){
 if ($flag4==1){
 	 $sumCount47BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount47FWD+=$token;}
 }
 
  if($count==48){
 if ($flag4==1){
 	 $sumCount48BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount48FWD+=$token;}
 }

  if($count==49){
 if ($flag4==1){
 	 $sumCount49BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount49FWD+=$token;}
 }
  if($count==50){
 if ($flag4==1){
 	 $sumCount50BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount50FWD+=$token;}
 }

   if($count==51){
 if ($flag4==1){
 	 $sumCount51BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount51FWD+=$token;}
 }

   if($count==52){
 if ($flag4==1){
 	 $sumCount52BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount52FWD+=$token;}
 }
  if($count==53){
 if ($flag4==1){
 	 $sumCount53BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount53FWD+=$token;}
 }

  if($count==54){
 if ($flag4==1){
 	 $sumCount54BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount54FWD+=$token;}
 }
  if($count==55){
 if ($flag4==1){
 	 $sumCount55BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount55FWD+=$token;}
 }

  if($count==56){
 if ($flag4==1){
 	 $sumCount56BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount56FWD+=$token;}
 }
   if($count==57){
 if ($flag4==1){
 	 $sumCount57BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount57FWD+=$token;}
 }
 
  if($count==58){
 if ($flag4==1){
 	 $sumCount58BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount58FWD+=$token;}
 }

  if($count==59){
 if ($flag4==1){
 	 $sumCount59BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount59FWD+=$token;}
 }
  if($count==60){
 if ($flag4==1){
 	 $sumCount60BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount60FWD+=$token;}
 }

  if($count==61){
 if ($flag4==1){
 	 $sumCount61BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount61FWD+=$token;}
 }

   if($count==62){
 if ($flag4==1){
 	 $sumCount62BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount62FWD+=$token;}
 }
  if($count==63){
 if ($flag4==1){
 	 $sumCount63BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount63FWD+=$token;}
 }

  if($count==64){
 if ($flag4==1){
 	 $sumCount64BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount64FWD+=$token;}
 }
  if($count==65){
 if ($flag4==1){
 	 $sumCount65BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount65FWD+=$token;}
 }

  if($count==66){
 if ($flag4==1){
 	 $sumCount66BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount66FWD+=$token;}
 }
   if($count==67){
 if ($flag4==1){
 	 $sumCount67BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount67FWD+=$token;}
 }
 
  if($count==68){
 if ($flag4==1){
 	 $sumCount68BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount68FWD+=$token;}
 }

  if($count==69){
 if ($flag4==1){
 	 $sumCount69BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount69FWD+=$token;}
 }
  if($count==70){
 if ($flag4==1){
 	 $sumCount70BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount70FWD+=$token;}
 }
 
  if($count==71){
 if ($flag4==1){
 	 $sumCount71BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount71FWD+=$token;}
 }

   if($count==72){
 if ($flag4==1){
 	 $sumCount72BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount72FWD+=$token;}
 }
  if($count==73){
 if ($flag4==1){
 	 $sumCount73BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount73FWD+=$token;}
 }

  if($count==74){
 if ($flag4==1){
 	 $sumCount74BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount74FWD+=$token;}
 }
  if($count==75){
 if ($flag4==1){
 	 $sumCount75BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount75FWD+=$token;}
 }

  if($count==76){
 if ($flag4==1){
 	 $sumCount76BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount76FWD+=$token;}
 }
   if($count==77){
 if ($flag4==1){
 	 $sumCount77BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount77FWD+=$token;}
 }
 
  if($count==78){
 if ($flag4==1){
 	 $sumCount78BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount78FWD+=$token;}
 }

  if($count==79){
 if ($flag4==1){
 	 $sumCount79BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount79FWD+=$token;}
 }
  if($count==80){
 if ($flag4==1){
 	 $sumCount80BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount80FWD+=$token;}
 }
  if($count==81){
 if ($flag4==1){
 	 $sumCount81BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount81FWD+=$token;}
 }

   if($count==82){
 if ($flag4==1){
 	 $sumCount82BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount82FWD+=$token;}
 }
  if($count==83){
 if ($flag4==1){
 	 $sumCount83BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount83FWD+=$token;}
 }

  if($count==84){
 if ($flag4==1){
 	 $sumCount84BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount84FWD+=$token;}
 }
  if($count==85){
 if ($flag4==1){
 	 $sumCount85BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount85FWD+=$token;}
 }

  if($count==86){
 if ($flag4==1){
 	 $sumCount86BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount86FWD+=$token;}
 }
   if($count==87){
 if ($flag4==1){
 	 $sumCount87BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount87FWD+=$token;}
 }
 
  if($count==88){
 if ($flag4==1){
 	 $sumCount88BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount88FWD+=$token;}
 }

  if($count==89){
 if ($flag4==1){
 	 $sumCount89BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount89FWD+=$token;}
 }
  if($count==90){
 if ($flag4==1){
 	 $sumCount90BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount90FWD+=$token;}
 }
  if($count==91){
 if ($flag4==1){
 	 $sumCount91BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount91FWD+=$token;}
 }

   if($count==92){
 if ($flag4==1){
 	 $sumCount92BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount92FWD+=$token;}
 }
  if($count==93){
 if ($flag4==1){
 	 $sumCount93BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount93FWD+=$token;}
 }

  if($count==94){
 if ($flag4==1){
 	 $sumCount94BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount94FWD+=$token;}
 }
  if($count==95){
 if ($flag4==1){
 	 $sumCount95BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount95FWD+=$token;}
 }

  if($count==96){
 if ($flag4==1){
 	 $sumCount96BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount96FWD+=$token;}
 }
   if($count==97){
 if ($flag4==1){
 	 $sumCount97BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount97FWD+=$token;}
 }
 
  if($count==98){
 if ($flag4==1){
 	 $sumCount98BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount98FWD+=$token;}
 }

  if($count==99){
 if ($flag4==1){
 	 $sumCount99BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount99FWD+=$token;}
 }
  if($count==100){
 if ($flag4==1){
 	 $sumCount100BWD+=$token;}
 
  if ($flag4==0){
 	 $sumCount100FWD+=$token;}
 }


 }

 if(($token cmp "[INFO]  Avg time per fwd")==0){
		
		 # my $test1 = sprintf("=AVERAGE($totalString)");


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

		   	   $avgCount28FWD= $sumCount28FWD/($count3/2);
		   $avgCount28BWD= $sumCount28BWD/($count3/2);

		   $avgCount29FWD= $sumCount29FWD/($count3/2);
		   $avgCount29BWD= $sumCount29BWD/($count3/2);

		   $avgCount30FWD= $sumCount30FWD/($count3/2);
		   $avgCount30BWD= $sumCount30BWD/($count3/2);

		     $avgCount31FWD= $sumCount31FWD/($count3/2);
		   $avgCount31BWD= $sumCount31BWD/($count3/2);

		     $avgCount32FWD= $sumCount32FWD/($count3/2);
		   $avgCount32BWD= $sumCount32BWD/($count3/2);

		   $avgCount33FWD= $sumCount33FWD/($count3/2);
		   $avgCount33BWD= $sumCount33BWD/($count3/2);

		     $avgCount34FWD= $sumCount34FWD/($count3/2);
		   $avgCount34BWD= $sumCount34BWD/($count3/2);

		   $avgCount35FWD= $sumCount35FWD/($count3/2);
		   $avgCount35BWD= $sumCount35BWD/($count3/2);

		     $avgCount36FWD= $sumCount36FWD/($count3/2);
		   $avgCount36BWD= $sumCount36BWD/($count3/2);

		     $avgCount37FWD= $sumCount37FWD/($count3/2);
		   $avgCount37BWD= $sumCount37BWD/($count3/2);

		   	   $avgCount38FWD= $sumCount38FWD/($count3/2);
		   $avgCount38BWD= $sumCount38BWD/($count3/2);

		   $avgCount39FWD= $sumCount39FWD/($count3/2);
		   $avgCount39BWD= $sumCount39BWD/($count3/2);

		   $avgCount40FWD= $sumCount40FWD/($count3/2);
		   $avgCount40BWD= $sumCount40BWD/($count3/2);

		     $avgCount41FWD= $sumCount41FWD/($count3/2);
		   $avgCount41BWD= $sumCount41BWD/($count3/2);

		     $avgCount42FWD= $sumCount42FWD/($count3/2);
		   $avgCount42BWD= $sumCount42BWD/($count3/2);

		   $avgCount43FWD= $sumCount43FWD/($count3/2);
		   $avgCount43BWD= $sumCount43BWD/($count3/2);

		     $avgCount44FWD= $sumCount44FWD/($count3/2);
		   $avgCount44BWD= $sumCount44BWD/($count3/2);

		   $avgCount45FWD= $sumCount45FWD/($count3/2);
		   $avgCount45BWD= $sumCount45BWD/($count3/2);

		     $avgCount46FWD= $sumCount46FWD/($count3/2);
		   $avgCount46BWD= $sumCount46BWD/($count3/2);

		     $avgCount47FWD= $sumCount47FWD/($count3/2);
		   $avgCount47BWD= $sumCount47BWD/($count3/2);

		   	   $avgCount48FWD= $sumCount48FWD/($count3/2);
		   $avgCount48BWD= $sumCount48BWD/($count3/2);

		   $avgCount49FWD= $sumCount49FWD/($count3/2);
		   $avgCount49BWD= $sumCount49BWD/($count3/2);

		   $avgCount50FWD= $sumCount50FWD/($count3/2);
		   $avgCount50BWD= $sumCount50BWD/($count3/2);
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

    $avgCount51FWD= $sumCount51FWD/($count3/2);
		   $avgCount51BWD= $sumCount51BWD/($count3/2);

		     $avgCount52FWD= $sumCount52FWD/($count3/2);
		   $avgCount52BWD= $sumCount52BWD/($count3/2);

		   $avgCount43FWD= $sumCount43FWD/($count3/2);
		   $avgCount43BWD= $sumCount43BWD/($count3/2);

		     $avgCount54FWD= $sumCount54FWD/($count3/2);
		   $avgCount54BWD= $sumCount54BWD/($count3/2);

		   $avgCount55FWD= $sumCount55FWD/($count3/2);
		   $avgCount55BWD= $sumCount55BWD/($count3/2);

		     $avgCount56FWD= $sumCount56FWD/($count3/2);
		   $avgCount56BWD= $sumCount56BWD/($count3/2);

		     $avgCount57FWD= $sumCount57FWD/($count3/2);
		   $avgCount57BWD= $sumCount57BWD/($count3/2);

		   	   $avgCount58FWD= $sumCount58FWD/($count3/2);
		   $avgCount58BWD= $sumCount58BWD/($count3/2);

		   $avgCount59FWD= $sumCount59FWD/($count3/2);
		   $avgCount59BWD= $sumCount59BWD/($count3/2);

		   $avgCount60FWD= $sumCount60FWD/($count3/2);
		   $avgCount60BWD= $sumCount60BWD/($count3/2);

		     $avgCount61FWD= $sumCount61FWD/($count3/2);
		   $avgCount61BWD= $sumCount61BWD/($count3/2);

		     $avgCount62FWD= $sumCount62FWD/($count3/2);
		   $avgCount62BWD= $sumCount62BWD/($count3/2);

		   $avgCount63FWD= $sumCount63FWD/($count3/2);
		   $avgCount63BWD= $sumCount63BWD/($count3/2);

		     $avgCount64FWD= $sumCount64FWD/($count3/2);
		   $avgCount64BWD= $sumCount64BWD/($count3/2);

		   $avgCount65FWD= $sumCount65FWD/($count3/2);
		   $avgCount65BWD= $sumCount65BWD/($count3/2);

		     $avgCount66FWD= $sumCount66FWD/($count3/2);
		   $avgCount66BWD= $sumCount66BWD/($count3/2);

		     $avgCount67FWD= $sumCount67FWD/($count3/2);
		   $avgCount67BWD= $sumCount67BWD/($count3/2);

		   	   $avgCount68FWD= $sumCount68FWD/($count3/2);
		   $avgCount68BWD= $sumCount68BWD/($count3/2);

		   $avgCount69FWD= $sumCount69FWD/($count3/2);
		   $avgCount69BWD= $sumCount69BWD/($count3/2);

		   $avgCount70FWD= $sumCount70FWD/($count3/2);
		   $avgCount70BWD= $sumCount70BWD/($count3/2);

		   $avgCount71FWD= $sumCount71FWD/($count3/2);
		   $avgCount71BWD= $sumCount71BWD/($count3/2);

		     $avgCount72FWD= $sumCount72FWD/($count3/2);
		   $avgCount72BWD= $sumCount72BWD/($count3/2);

		   $avgCount73FWD= $sumCount73FWD/($count3/2);
		   $avgCount73BWD= $sumCount73BWD/($count3/2);

		     $avgCount74FWD= $sumCount74FWD/($count3/2);
		   $avgCount74BWD= $sumCount74BWD/($count3/2);

		   $avgCount75FWD= $sumCount75FWD/($count3/2);
		   $avgCount75BWD= $sumCount75BWD/($count3/2);

		     $avgCount76FWD= $sumCount76FWD/($count3/2);
		   $avgCount76BWD= $sumCount76BWD/($count3/2);

		     $avgCount77FWD= $sumCount77FWD/($count3/2);
		   $avgCount77BWD= $sumCount77BWD/($count3/2);

		   	   $avgCount78FWD= $sumCount78FWD/($count3/2);
		   $avgCount78BWD= $sumCount78BWD/($count3/2);

		   $avgCount79FWD= $sumCount79FWD/($count3/2);
		   $avgCount79BWD= $sumCount79BWD/($count3/2);

		   $avgCount80FWD= $sumCount80FWD/($count3/2);
		   $avgCount80BWD= $sumCount80BWD/($count3/2);

		      $avgCount81FWD= $sumCount81FWD/($count3/2);
		   $avgCount81BWD= $sumCount81BWD/($count3/2);

		     $avgCount82FWD= $sumCount82FWD/($count3/2);
		   $avgCount82BWD= $sumCount82BWD/($count3/2);

		   $avgCount83FWD= $sumCount83FWD/($count3/2);
		   $avgCount83BWD= $sumCount83BWD/($count3/2);

		     $avgCount84FWD= $sumCount84FWD/($count3/2);
		   $avgCount84BWD= $sumCount84BWD/($count3/2);

		   $avgCount85FWD= $sumCount85FWD/($count3/2);
		   $avgCount85BWD= $sumCount85BWD/($count3/2);

		     $avgCount86FWD= $sumCount86FWD/($count3/2);
		   $avgCount86BWD= $sumCount86BWD/($count3/2);

		     $avgCount87FWD= $sumCount87FWD/($count3/2);
		   $avgCount87BWD= $sumCount87BWD/($count3/2);

		   	   $avgCount88FWD= $sumCount88FWD/($count3/2);
		   $avgCount88BWD= $sumCount88BWD/($count3/2);

		   $avgCount89FWD= $sumCount89FWD/($count3/2);
		   $avgCount89BWD= $sumCount89BWD/($count3/2);

		   $avgCount90FWD= $sumCount90FWD/($count3/2);
		   $avgCount90BWD= $sumCount90BWD/($count3/2);

		    $avgCount91FWD= $sumCount91FWD/($count3/2);
		   $avgCount91BWD= $sumCount91BWD/($count3/2);

		     $avgCount92FWD= $sumCount92FWD/($count3/2);
		   $avgCount92BWD= $sumCount92BWD/($count3/2);

		   $avgCount93FWD= $sumCount93FWD/($count3/2);
		   $avgCount93BWD= $sumCount93BWD/($count3/2);

		     $avgCount94FWD= $sumCount94FWD/($count3/2);
		   $avgCount94BWD= $sumCount94BWD/($count3/2);

		   $avgCount95FWD= $sumCount95FWD/($count3/2);
		   $avgCount95BWD= $sumCount95BWD/($count3/2);

		     $avgCount96FWD= $sumCount96FWD/($count3/2);
		   $avgCount96BWD= $sumCount96BWD/($count3/2);

		     $avgCount97FWD= $sumCount97FWD/($count3/2);
		   $avgCount97BWD= $sumCount97BWD/($count3/2);

		   	   $avgCount98FWD= $sumCount98FWD/($count3/2);
		   $avgCount98BWD= $sumCount98BWD/($count3/2);

		   $avgCount99FWD= $sumCount99FWD/($count3/2);
		   $avgCount99BWD= $sumCount99BWD/($count3/2);

		   $avgCount100FWD= $sumCount100FWD/($count3/2);
		   $avgCount100BWD= $sumCount100BWD/($count3/2);


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
if($count11==22){
if(	$flag411==1){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount22BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }if(	$flag411==0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount22FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }
}
if($count11==23){
if(	$flag411==1){
if($avgCount23BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount23BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");
	 }}
	 if(	$flag411==0){
	 if($avgCount23FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount23FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==24){
if(	$flag411==1){
if($avgCount24BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount24BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount24FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount24FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==25){
if(	$flag411==1){
if($avgCount25BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount25BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount25FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount25FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==26){
if(	$flag411==1){
if($avgCount26BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount26BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount26FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount26FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==27){
if(	$flag411==1){
if($avgCount27BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount27BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount27FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount27FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==28){
if(	$flag411==1){
if($avgCount28BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount28BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount28FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount28FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==29){
if(	$flag411==1){
if($avgCount29BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount29BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount29FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount29FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==30){
if(	$flag411==1){
if($avgCount30BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount30BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount30FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount30FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==31){
if(	$flag411==1){
if($avgCount31BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount31BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount32FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount32FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==32){
if(	$flag411==1){
if($avgCount32BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount32BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount32FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount32FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==33){
if(	$flag411==1){
if($avgCount33BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount33BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount33FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount33FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==34){
if(	$flag411==1){
if($avgCount34BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount34BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount34FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount34FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==35){
if(	$flag411==1){
if($avgCount35BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount35BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount35FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount35FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==36){
if(	$flag411==1){
if($avgCount36BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount36BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount36FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount36FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==37){
if(	$flag411==1){
if($avgCount37BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount37BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount37FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount37FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==38){
if(	$flag411==1){
if($avgCount38BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount38BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount38FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount38FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==39){
if(	$flag411==1){
if($avgCount39BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount39BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount39FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount39FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==40){
if(	$flag411==1){
if($avgCount40BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount40BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount40FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount40FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==41){
if(	$flag411==1){
if($avgCount41BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount41BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount41FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount41FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==42){
if(	$flag411==1){
if($avgCount42BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount42BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount42FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount42FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==43){
if(	$flag411==1){
if($avgCount43BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount43BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount43FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount43FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==44){
if(	$flag411==1){
if($avgCount44BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount44BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount44FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount44FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==45){
if(	$flag411==1){
if($avgCount45BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount45BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount45FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount45FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==46){
if(	$flag411==1){
if($avgCount46BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount46BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount46FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount46FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==47){
if(	$flag411==1){
if($avgCount47BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount47BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount47FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount47FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

if($count11==48){
if(	$flag411==1){
if($avgCount48BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount48BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount48FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount48FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==49){
if(	$flag411==1){
if($avgCount49BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount49BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount49FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount49FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==50){
if(	$flag411==1){
if($avgCount50BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount50BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount50FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount50FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }



	 if($count11==51){
if(	$flag411==1){
if($avgCount51BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount51BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount51FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount51FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==52){
if(	$flag411==1){
if($avgCount52BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount52BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount52FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount52FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==53){
if(	$flag411==1){
if($avgCount53BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount53BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount53FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount53FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==54){
if(	$flag411==1){
if($avgCount54BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount54BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount54FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount54FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==55){
if(	$flag411==1){
if($avgCount55BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount55BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount55FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount55FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==56){
if(	$flag411==1){
if($avgCount56BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount56BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount56FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount56FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==57){
if(	$flag411==1){
if($avgCount57BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount57BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount57FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount57FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

if($count11==58){
if(	$flag411==1){
if($avgCount58BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount58BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount58FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount58FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==59){
if(	$flag411==1){
if($avgCount59BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount59BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount59FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount59FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==60){
if(	$flag411==1){
if($avgCount60BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount60BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount60FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount60FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

	 if($count11==71){
if(	$flag411==1){
if($avgCount71BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount71BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount71FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount71FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==72){
if(	$flag411==1){
if($avgCount72BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount72BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount72FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount72FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==73){
if(	$flag411==1){
if($avgCount73BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount73BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount73FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount73FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==74){
if(	$flag411==1){
if($avgCount74BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount74BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount74FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount74FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==65){
if(	$flag411==1){
if($avgCount65BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount65BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount65FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount65FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==66){
if(	$flag411==1){
if($avgCount66BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount66BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount66FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount66FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==67){
if(	$flag411==1){
if($avgCount67BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount67BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount67FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount67FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

if($count11==68){
if(	$flag411==1){
if($avgCount68BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount68BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount68FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount68FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==69){
if(	$flag411==1){
if($avgCount69BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount69BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount69FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount69FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==70){
if(	$flag411==1){
if($avgCount70BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount70BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount70FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount70FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

 if($count11==61){
if(	$flag411==1){
if($avgCount61BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount61BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount61FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount61FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==62){
if(	$flag411==1){
if($avgCount62BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount62BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount62FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount62FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==63){
if(	$flag411==1){
if($avgCount63BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount63BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount63FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount63FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==64){
if(	$flag411==1){
if($avgCount64BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount64BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount64FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount64FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==65){
if(	$flag411==1){
if($avgCount65BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount65BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount65FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount65FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==66){
if(	$flag411==1){
if($avgCount66BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount66BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount66FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount66FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==67){
if(	$flag411==1){
if($avgCount67BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount67BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount67FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount67FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

if($count11==68){
if(	$flag411==1){
if($avgCount68BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount68BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount68FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount68FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==69){
if(	$flag411==1){
if($avgCount69BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount69BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount69FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount69FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==70){
if(	$flag411==1){
if($avgCount70BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount70BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount70FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount70FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

 if($count11==71){
if(	$flag411==1){
if($avgCount71BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount71BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount71FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount71FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==72){
if(	$flag411==1){
if($avgCount72BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount72BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount72FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount72FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==73){
if(	$flag411==1){
if($avgCount73BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount73BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount73FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount73FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==74){
if(	$flag411==1){
if($avgCount74BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount74BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount74FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount74FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==75){
if(	$flag411==1){
if($avgCount75BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount75BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount75FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount75FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==76){
if(	$flag411==1){
if($avgCount76BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount76BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount76FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount76FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==77){
if(	$flag411==1){
if($avgCount77BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount77BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount77FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount77FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

if($count11==78){
if(	$flag411==1){
if($avgCount78BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount78BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount78FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount78FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==79){
if(	$flag411==1){
if($avgCount79BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount79BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount79FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount79FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==80){
if(	$flag411==1){
if($avgCount80BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount80BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount80FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount80FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

 if($count11==81){
if(	$flag411==1){
if($avgCount81BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount81BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount81FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount81FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==82){
if(	$flag411==1){
if($avgCount82BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount82BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount82FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount82FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==83){
if(	$flag411==1){
if($avgCount83BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount83BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount83FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount83FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==84){
if(	$flag411==1){
if($avgCount84BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount84BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount84FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount84FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==85){
if(	$flag411==1){
if($avgCount85BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount85BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount85FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount85FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==86){
if(	$flag411==1){
if($avgCount86BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount86BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount86FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount86FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==87){
if(	$flag411==1){
if($avgCount87BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount87BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount87FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount87FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

if($count11==88){
if(	$flag411==1){
if($avgCount88BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount88BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount88FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount88FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==89){
if(	$flag411==1){
if($avgCount89BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount89BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount89FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount89FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==90){
if(	$flag411==1){
if($avgCount90BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount90BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount90FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount90FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

 if($count11==91){
if(	$flag411==1){
if($avgCount91BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount91BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount91FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount91FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==92){
if(	$flag411==1){
if($avgCount92BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount92BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount92FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount92FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==93){
if(	$flag411==1){
if($avgCount93BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount93BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount93FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount93FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==94){
if(	$flag411==1){
if($avgCount94BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount94BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount94FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount94FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==95){
if(	$flag411==1){
if($avgCount95BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount95BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount95FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount95FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==96){
if(	$flag411==1){
if($avgCount96BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount96BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount96FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount96FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==97){
if(	$flag411==1){
if($avgCount97BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount97BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount97FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount97FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}

if($count11==98){
if(	$flag411==1){
if($avgCount98BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount98BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount98FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount98FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==99){
if(	$flag411==1){
if($avgCount99BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount99BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount99FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount99FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }
}
if($count11==100){
if(	$flag411==1){
if($avgCount100BWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount100BWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
	 }if(	$flag411==0){
	 if($avgCount100FWD!=0){
		    $worksheet1->write($row11-$tempRow11+3, 6, $avgCount100FWD);
	 $worksheet1->write($row11-$tempRow11+3, 7, "ms");}
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
	my $avgCount28FWD2= 0;
	my $sumCount28FWD2= 0;
    my $avgCount28BWD2= 0;
	my $sumCount28BWD2= 0;
	my $avgCount29FWD2= 0;
	my $sumCount29FWD2= 0;
    my $avgCount29BWD2= 0;
	my $sumCount29BWD2= 0;
	my $avgCount30FWD2= 0;
	my $sumCount30FWD2= 0;
    my $avgCount30BWD2= 0;
	my $sumCount30BWD2= 0;
	my $avgCount31FWD2= 0;
	my $sumCount31FWD2= 0;
    my $avgCount31BWD2= 0;
	my $sumCount31BWD2= 0;
	my $avgCount32FWD2= 0;
	my $sumCount32FWD2= 0;
    my $avgCount32BWD2= 0;
	my $sumCount32BWD2= 0;
	my $avgCount33FWD2= 0;
	my $sumCount33FWD2= 0;
    my $avgCount33BWD2= 0;
	my $sumCount33BWD2= 0;
	my $avgCount34FWD2= 0;
	my $sumCount34FWD2= 0;
    my $avgCount34BWD2= 0;
	my $sumCount34BWD2= 0;
	my $avgCount35FWD2= 0;
	my $sumCount35FWD2= 0;
    my $avgCount35BWD2= 0;
	my $sumCount35BWD2= 0;
	my $avgCount36FWD2= 0;
	my $sumCount36FWD2= 0;
    my $avgCount36BWD2= 0;
	my $sumCount36BWD2= 0;
	my $avgCount37FWD2= 0;
	my $sumCount37FWD2= 0;
    my $avgCount37BWD2= 0;
	my $sumCount37BWD2= 0;
	my $avgCount38FWD2= 0;
	my $sumCount38FWD2= 0;
    my $avgCount38BWD2= 0;
	my $sumCount38BWD2= 0;
	my $avgCount39FWD2= 0;
	my $sumCount39FWD2= 0;
    my $avgCount39BWD2= 0;
	my $sumCount39BWD2= 0;
	my $avgCount40FWD2= 0;
	my $sumCount40FWD2= 0;
    my $avgCount40BWD2= 0;
	my $sumCount40BWD2= 0;
	my $avgCount41FWD2= 0;
	my $sumCount41FWD2= 0;
    my $avgCount41BWD2= 0;
	my $sumCount41BWD2= 0;
	my $avgCount42FWD2= 0;
	my $sumCount42FWD2= 0;
    my $avgCount42BWD2= 0;
	my $sumCount42BWD2= 0;
	my $avgCount43FWD2= 0;
	my $sumCount43FWD2= 0;
    my $avgCount43BWD2= 0;
	my $sumCount43BWD2= 0;
	my $avgCount44FWD2= 0;
	my $sumCount44FWD2= 0;
    my $avgCount44BWD2= 0;
	my $sumCount44BWD2= 0;
    my $avgCount45FWD2= 0;
	my $sumCount45FWD2= 0;
    my $avgCount45BWD2= 0;
	my $sumCount45BWD2= 0;
	my $avgCount46FWD2= 0;
	my $sumCount46FWD2= 0;
    my $avgCount46BWD2= 0;
	my $sumCount46BWD2= 0;
	my $avgCount47FWD2= 0;
	my $sumCount47FWD2= 0;
    my $avgCount47BWD2= 0;
	my $sumCount47BWD2= 0;
	my $avgCount48FWD2= 0;
	my $sumCount48FWD2= 0;
    my $avgCount48BWD2= 0;
	my $sumCount48BWD2= 0;
	my $avgCount49FWD2= 0;
	my $sumCount49FWD2= 0;
    my $avgCount49BWD2= 0;
	my $sumCount49BWD2= 0;
	my $avgCount50FWD2= 0;
	my $sumCount50FWD2= 0;
    my $avgCount50BWD2= 0;
	my $sumCount50BWD2= 0;
	#my $col=0;

	my $avgCount51FWD2= 0;
	my $sumCount51FWD2= 0;
    my $avgCount51BWD2= 0;
	my $sumCount51BWD2= 0;
	my $avgCount52FWD2= 0;
	my $sumCount52FWD2= 0;
    my $avgCount52BWD2= 0;
	my $sumCount52BWD2= 0;
	my $avgCount53FWD2= 0;
	my $sumCount53FWD2= 0;
    my $avgCount53BWD2= 0;
	my $sumCount53BWD2= 0;
	my $avgCount54FWD2= 0;
	my $sumCount54FWD2= 0;
    my $avgCount54BWD2= 0;
	my $sumCount54BWD2= 0;
	my $avgCount55FWD2= 0;
	my $sumCount55FWD2= 0;
    my $avgCount55BWD2= 0;
	my $sumCount55BWD2= 0;
	my $avgCount56FWD2= 0;
	my $sumCount56FWD2= 0;
    my $avgCount56BWD2= 0;
	my $sumCount56BWD2= 0;
	my $avgCount57FWD2= 0;
	my $sumCount57FWD2= 0;
    my $avgCount57BWD2= 0;
	my $sumCount57BWD2= 0;
	my $avgCount58FWD2= 0;
	my $sumCount58FWD2= 0;
    my $avgCount58BWD2= 0;
	my $sumCount58BWD2= 0;
	my $avgCount59FWD2= 0;
	my $sumCount59FWD2= 0;
    my $avgCount59BWD2= 0;
	my $sumCount59BWD2= 0;
	my $avgCount60FWD2= 0;
	my $sumCount60FWD2= 0;
    my $avgCount60BWD2= 0;
	my $sumCount60BWD2= 0;

    my $avgCount61FWD2= 0;
	my $sumCount61FWD2= 0;
    my $avgCount61BWD2= 0;
	my $sumCount61BWD2= 0;
	my $avgCount62FWD2= 0;
	my $sumCount62FWD2= 0;
    my $avgCount62BWD2= 0;
	my $sumCount62BWD2= 0;
	my $avgCount63FWD2= 0;
	my $sumCount63FWD2= 0;
    my $avgCount63BWD2= 0;
	my $sumCount63BWD2= 0;
	my $avgCount64FWD2= 0;
	my $sumCount64FWD2= 0;
    my $avgCount64BWD2= 0;
	my $sumCount64BWD2= 0;
	my $avgCount65FWD2= 0;
	my $sumCount65FWD2= 0;
    my $avgCount65BWD2= 0;
	my $sumCount65BWD2= 0;
	my $avgCount66FWD2= 0;
	my $sumCount66FWD2= 0;
    my $avgCount66BWD2= 0;
	my $sumCount66BWD2= 0;
	my $avgCount67FWD2= 0;
	my $sumCount67FWD2= 0;
    my $avgCount67BWD2= 0;
	my $sumCount67BWD2= 0;
	my $avgCount68FWD2= 0;
	my $sumCount68FWD2= 0;
    my $avgCount68BWD2= 0;
	my $sumCount68BWD2= 0;
	my $avgCount69FWD2= 0;
	my $sumCount69FWD2= 0;
    my $avgCount69BWD2= 0;
	my $sumCount69BWD2= 0;
	my $avgCount70FWD2= 0;
	my $sumCount70FWD2= 0;
    my $avgCount70BWD2= 0;
	my $sumCount70BWD2= 0;

	my $avgCount71FWD2= 0;
	my $sumCount71FWD2= 0;
    my $avgCount71BWD2= 0;
	my $sumCount71BWD2= 0;
	my $avgCount72FWD2= 0;
	my $sumCount72FWD2= 0;
    my $avgCount72BWD2= 0;
	my $sumCount72BWD2= 0;
	my $avgCount73FWD2= 0;
	my $sumCount73FWD2= 0;
    my $avgCount73BWD2= 0;
	my $sumCount73BWD2= 0;
	my $avgCount74FWD2= 0;
	my $sumCount74FWD2= 0;
    my $avgCount74BWD2= 0;
	my $sumCount74BWD2= 0;
	my $avgCount75FWD2= 0;
	my $sumCount75FWD2= 0;
    my $avgCount75BWD2= 0;
	my $sumCount75BWD2= 0;
	my $avgCount76FWD2= 0;
	my $sumCount76FWD2= 0;
    my $avgCount76BWD2= 0;
	my $sumCount76BWD2= 0;
	my $avgCount77FWD2= 0;
	my $sumCount77FWD2= 0;
    my $avgCount77BWD2= 0;
	my $sumCount77BWD2= 0;
	my $avgCount78FWD2= 0;
	my $sumCount78FWD2= 0;
    my $avgCount78BWD2= 0;
	my $sumCount78BWD2= 0;
	my $avgCount79FWD2= 0;
	my $sumCount79FWD2= 0;
    my $avgCount79BWD2= 0;
	my $sumCount79BWD2= 0;
	my $avgCount80FWD2= 0;
	my $sumCount80FWD2= 0;
    my $avgCount80BWD2= 0;
	my $sumCount80BWD2= 0;

	my $avgCount81FWD2= 0;
	my $sumCount81FWD2= 0;
    my $avgCount81BWD2= 0;
	my $sumCount81BWD2= 0;
	my $avgCount82FWD2= 0;
	my $sumCount82FWD2= 0;
    my $avgCount82BWD2= 0;
	my $sumCount82BWD2= 0;
	my $avgCount83FWD2= 0;
	my $sumCount83FWD2= 0;
    my $avgCount83BWD2= 0;
	my $sumCount83BWD2= 0;
	my $avgCount84FWD2= 0;
	my $sumCount84FWD2= 0;
    my $avgCount84BWD2= 0;
	my $sumCount84BWD2= 0;
	my $avgCount85FWD2= 0;
	my $sumCount85FWD2= 0;
    my $avgCount85BWD2= 0;
	my $sumCount85BWD2= 0;
	my $avgCount86FWD2= 0;
	my $sumCount86FWD2= 0;
    my $avgCount86BWD2= 0;
	my $sumCount86BWD2= 0;
	my $avgCount87FWD2= 0;
	my $sumCount87FWD2= 0;
    my $avgCount87BWD2= 0;
	my $sumCount87BWD2= 0;
	my $avgCount88FWD2= 0;
	my $sumCount88FWD2= 0;
    my $avgCount88BWD2= 0;
	my $sumCount88BWD2= 0;
	my $avgCount89FWD2= 0;
	my $sumCount89FWD2= 0;
    my $avgCount89BWD2= 0;
	my $sumCount89BWD2= 0;
	my $avgCount90FWD2= 0;
	my $sumCount90FWD2= 0;
    my $avgCount90BWD2= 0;
	my $sumCount90BWD2= 0;

	my $avgCount91FWD2= 0;
	my $sumCount91FWD2= 0;
    my $avgCount91BWD2= 0;
	my $sumCount91BWD2= 0;
	my $avgCount92FWD2= 0;
	my $sumCount92FWD2= 0;
    my $avgCount92BWD2= 0;
	my $sumCount92BWD2= 0;
	my $avgCount93FWD2= 0;
	my $sumCount93FWD2= 0;
    my $avgCount93BWD2= 0;
	my $sumCount93BWD2= 0;
	my $avgCount94FWD2= 0;
	my $sumCount94FWD2= 0;
    my $avgCount94BWD2= 0;
	my $sumCount94BWD2= 0;
	my $avgCount95FWD2= 0;
	my $sumCount95FWD2= 0;
    my $avgCount95BWD2= 0;
	my $sumCount95BWD2= 0;
	my $avgCount96FWD2= 0;
	my $sumCount96FWD2= 0;
    my $avgCount96BWD2= 0;
	my $sumCount96BWD2= 0;
	my $avgCount97FWD2= 0;
	my $sumCount97FWD2= 0;
    my $avgCount97BWD2= 0;
	my $sumCount97BWD2= 0;
	my $avgCount98FWD2= 0;
	my $sumCount98FWD2= 0;
    my $avgCount98BWD2= 0;
	my $sumCount98BWD2= 0;
	my $avgCount99FWD2= 0;
	my $sumCount99FWD2= 0;
    my $avgCount99BWD2= 0;
	my $sumCount99BWD2= 0;
	my $avgCount100FWD2= 0;
	my $sumCount100FWD2= 0;
    my $avgCount100BWD2= 0;
	my $sumCount100BWD2= 0;






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
  if($count22==28){
 if ($flag42==1){
 	 $sumCount28BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount28FWD2+=$token2;}
 }

  if($count22==29){
 if ($flag42==1){
 	 $sumCount29BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount29FWD2+=$token2;}
 }
  if($count22==30){
 if ($flag42==1){
 	 $sumCount30BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount30FWD2+=$token2;}
 }
 
  if($count22==31){
 if ($flag42==1){
 	 $sumCount31BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount31FWD2+=$token2;}
 }

  if($count22==32){
 if ($flag42==1){
 	 $sumCount32BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount32FWD2+=$token2;}
 }

  if($count22==33){
 if ($flag42==1){
 	 $sumCount33BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount33FWD2+=$token2;}
 }

  if($count22==34){
 if ($flag42==1){
 	 $sumCount34BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount34FWD2+=$token2;}
 }

  if($count22==35){
 if ($flag42==1){
 	 $sumCount35BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount35FWD2+=$token2;}
 }

  if($count22==36){
 if ($flag42==1){
 	 $sumCount36BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount36FWD2+=$token2;}
 }

  if($count22==37){
 if ($flag42==1){
 	 $sumCount37BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount37FWD2+=$token2;}
 }

  if($count22==38){
 if ($flag42==1){
 	 $sumCount38BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount38FWD2+=$token2;}
 }

  if($count22==39){
 if ($flag42==1){
 	 $sumCount39BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount39FWD2+=$token2;}
 }
  if($count22==40){
 if ($flag42==1){
 	 $sumCount40BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount40FWD2+=$token2;}
 }

  if($count22==41){
 if ($flag42==1){
 	 $sumCount41BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount41FWD2+=$token2;}
 }

  if($count22==42){
 if ($flag42==1){
 	 $sumCount42BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount42FWD2+=$token2;}
 }
  if($count22==43){
 if ($flag42==1){
 	 $sumCount43BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount43FWD2+=$token2;}
 }

  if($count22==44){
 if ($flag42==1){
 	 $sumCount44BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount44FWD2+=$token2;}
 }

  if($count22==45){
 if ($flag42==1){
 	 $sumCount45BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount45FWD2+=$token2;}
 }
 if($count22==46){
 if ($flag42==1){
 	 $sumCount46BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount46FWD2+=$token2;}
 }

  if($count22==47){
 if ($flag42==1){
 	 $sumCount47BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount47FWD2+=$token2;}
 }
  if($count22==48){
 if ($flag42==1){
 	 $sumCount48BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount48FWD2+=$token2;}
 }

  if($count22==49){
 if ($flag42==1){
 	 $sumCount49BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount49FWD2+=$token2;}
 }
  if($count22==50){
 if ($flag42==1){
 	 $sumCount50BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount50FWD2+=$token2;}
 }


 
  if($count22==51){
 if ($flag42==1){
 	 $sumCount51BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount51FWD2+=$token2;}
 }

  if($count22==52){
 if ($flag42==1){
 	 $sumCount52BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount52FWD2+=$token2;}
 }
  if($count22==53){
 if ($flag42==1){
 	 $sumCount53BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount53FWD2+=$token2;}
 }

  if($count22==54){
 if ($flag42==1){
 	 $sumCount54BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount54FWD2+=$token2;}
 }

  if($count22==55){
 if ($flag42==1){
 	 $sumCount55BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount55FWD2+=$token2;}
 }
 if($count22==56){
 if ($flag42==1){
 	 $sumCount56BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount56FWD2+=$token2;}
 }

  if($count22==57){
 if ($flag42==1){
 	 $sumCount57BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount57FWD2+=$token2;}
 }
  if($count22==58){
 if ($flag42==1){
 	 $sumCount58BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount58FWD2+=$token2;}
 }

  if($count22==59){
 if ($flag42==1){
 	 $sumCount59BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount59FWD2+=$token2;}
 }
  if($count22==60){
 if ($flag42==1){
 	 $sumCount60BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount60FWD2+=$token2;}
 }

 
  if($count22==61){
 if ($flag42==1){
 	 $sumCount61BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount61FWD2+=$token2;}
 }

  if($count22==62){
 if ($flag42==1){
 	 $sumCount62BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount62FWD2+=$token2;}
 }
  if($count22==63){
 if ($flag42==1){
 	 $sumCount63BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount63FWD2+=$token2;}
 }

  if($count22==64){
 if ($flag42==1){
 	 $sumCount64BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount64FWD2+=$token2;}
 }

  if($count22==65){
 if ($flag42==1){
 	 $sumCount65BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount65FWD2+=$token2;}
 }
 if($count22==66){
 if ($flag42==1){
 	 $sumCount66BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount66FWD2+=$token2;}
 }

  if($count22==67){
 if ($flag42==1){
 	 $sumCount67BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount67FWD2+=$token2;}
 }
  if($count22==68){
 if ($flag42==1){
 	 $sumCount68BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount68FWD2+=$token2;}
 }

  if($count22==69){
 if ($flag42==1){
 	 $sumCount69BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount69FWD2+=$token2;}
 }
  if($count22==70){
 if ($flag42==1){
 	 $sumCount70BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount70FWD2+=$token2;}
 }

 
  if($count22==71){
 if ($flag42==1){
 	 $sumCount71BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount71FWD2+=$token2;}
 }

  if($count22==72){
 if ($flag42==1){
 	 $sumCount72BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount72FWD2+=$token2;}
 }
  if($count22==73){
 if ($flag42==1){
 	 $sumCount73BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount73FWD2+=$token2;}
 }

  if($count22==74){
 if ($flag42==1){
 	 $sumCount74BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount74FWD2+=$token2;}
 }

  if($count22==75){
 if ($flag42==1){
 	 $sumCount75BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount75FWD2+=$token2;}
 }
 if($count22==76){
 if ($flag42==1){
 	 $sumCount76BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount76FWD2+=$token2;}
 }

  if($count22==77){
 if ($flag42==1){
 	 $sumCount77BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount77FWD2+=$token2;}
 }
  if($count22==78){
 if ($flag42==1){
 	 $sumCount78BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount78FWD2+=$token2;}
 }

  if($count22==79){
 if ($flag42==1){
 	 $sumCount79BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount79FWD2+=$token2;}
 }
  if($count22==80){
 if ($flag42==1){
 	 $sumCount80BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount80FWD2+=$token2;}
 }

 
  if($count22==81){
 if ($flag42==1){
 	 $sumCount81BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount81FWD2+=$token2;}
 }

  if($count22==82){
 if ($flag42==1){
 	 $sumCount82BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount82FWD2+=$token2;}
 }
  if($count22==83){
 if ($flag42==1){
 	 $sumCount83BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount83FWD2+=$token2;}
 }

  if($count22==84){
 if ($flag42==1){
 	 $sumCount84BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount84FWD2+=$token2;}
 }

  if($count22==85){
 if ($flag42==1){
 	 $sumCount85BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount85FWD2+=$token2;}
 }
 if($count22==86){
 if ($flag42==1){
 	 $sumCount86BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount86FWD2+=$token2;}
 }

  if($count22==87){
 if ($flag42==1){
 	 $sumCount87BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount87FWD2+=$token2;}
 }
  if($count22==88){
 if ($flag42==1){
 	 $sumCount88BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount88FWD2+=$token2;}
 }

  if($count22==89){
 if ($flag42==1){
 	 $sumCount89BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount89FWD2+=$token2;}
 }
  if($count22==90){
 if ($flag42==1){
 	 $sumCount90BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount90FWD2+=$token2;}
 }

 
  if($count22==91){
 if ($flag42==1){
 	 $sumCount91BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount91FWD2+=$token2;}
 }

  if($count22==92){
 if ($flag42==1){
 	 $sumCount92BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount92FWD2+=$token2;}
 }
  if($count22==93){
 if ($flag42==1){
 	 $sumCount93BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount93FWD2+=$token2;}
 }

  if($count22==94){
 if ($flag42==1){
 	 $sumCount94BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount94FWD2+=$token2;}
 }

  if($count22==95){
 if ($flag42==1){
 	 $sumCount95BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount95FWD2+=$token2;}
 }
 if($count22==96){
 if ($flag42==1){
 	 $sumCount96BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount96FWD2+=$token2;}
 }

  if($count22==97){
 if ($flag42==1){
 	 $sumCount97BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount97FWD2+=$token2;}
 }
  if($count22==98){
 if ($flag42==1){
 	 $sumCount98BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount98FWD2+=$token2;}
 }

  if($count22==99){
 if ($flag42==1){
 	 $sumCount99BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount99FWD2+=$token2;}
 }
  if($count22==100){
 if ($flag42==1){
 	 $sumCount100BWD2+=$token2;}
 
  if ($flag42==0){
 	 $sumCount100FWD2+=$token2;}
 }



 }

if(($token2 cmp "[INFO]  Avg time per fwd+bwd")==0){
my $test6 = sprintf("=(C%d/E%d)*100-100",$row2+1-$tempRow2+3,$row2+1-$tempRow2+3);
		  $worksheet1->write($row2-$tempRow2+3,10, $test6);



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

		     $avgCount28FWD2= $sumCount28FWD2/($count32/2);
		   $avgCount28BWD2= $sumCount28BWD2/($count32/2);

		   $avgCount29FWD2= $sumCount29FWD2/($count32/2);
		   $avgCount29BWD2= $sumCount29BWD2/($count32/2);

		   $avgCount30FWD2= $sumCount30FWD2/($count32/2);
		   $avgCount30BWD2= $sumCount30BWD2/($count32/2);

		   $avgCount31FWD2= $sumCount31FWD2/($count32/2);
		   $avgCount31BWD2= $sumCount31BWD2/($count32/2);

		   $avgCount32FWD2= $sumCount32FWD2/($count32/2);
		   $avgCount32BWD2= $sumCount32BWD2/($count32/2);

		   $avgCount33FWD2= $sumCount33FWD2/($count32/2);
		   $avgCount33BWD2= $sumCount33BWD2/($count32/2);

		   $avgCount34FWD2= $sumCount34FWD2/($count32/2);
		   $avgCount34BWD2= $sumCount34BWD2/($count32/2);

		   $avgCount35FWD2= $sumCount35FWD2/($count32/2);
		   $avgCount35BWD2= $sumCount35BWD2/($count32/2);

		   $avgCount36FWD2= $sumCount36FWD2/($count32/2);
		   $avgCount36BWD2= $sumCount36BWD2/($count32/2);

		   $avgCount37FWD2= $sumCount37FWD2/($count32/2);
		   $avgCount37BWD2= $sumCount37BWD2/($count32/2);

		   $avgCount38FWD2= $sumCount38FWD2/($count32/2);
		   $avgCount38BWD2= $sumCount38BWD2/($count32/2);

		   $avgCount39FWD2= $sumCount39FWD2/($count32/2);
		   $avgCount39BWD2= $sumCount39BWD2/($count32/2);

		   $avgCount40FWD2= $sumCount40FWD2/($count32/2);
		   $avgCount40BWD2= $sumCount40BWD2/($count32/2);

		   $avgCount41FWD2= $sumCount41FWD2/($count32/2);
		   $avgCount41BWD2= $sumCount41BWD2/($count32/2);

		   $avgCount42FWD2= $sumCount42FWD2/($count32/2);
		   $avgCount42BWD2= $sumCount42BWD2/($count32/2);
		   
		   $avgCount43FWD2= $sumCount43FWD2/($count32/2);
		   $avgCount43BWD2= $sumCount43BWD2/($count32/2);

		   $avgCount44FWD2= $sumCount44FWD2/($count32/2);
		   $avgCount44BWD2= $sumCount44BWD2/($count32/2);

		   $avgCount45FWD2= $sumCount45FWD2/($count32/2);
		   $avgCount45BWD2= $sumCount45BWD2/($count32/2);

		   $avgCount46FWD2= $sumCount46FWD2/($count32/2);
		   $avgCount46BWD2= $sumCount46BWD2/($count32/2);

		   $avgCount47FWD2= $sumCount47FWD2/($count32/2);
		   $avgCount47BWD2= $sumCount47BWD2/($count32/2);

		   $avgCount48FWD2= $sumCount48FWD2/($count32/2);
		   $avgCount48BWD2= $sumCount48BWD2/($count32/2);

		   $avgCount49FWD2= $sumCount49FWD2/($count32/2);
		   $avgCount49BWD2= $sumCount49BWD2/($count32/2);

		   $avgCount50FWD2= $sumCount50FWD2/($count32/2);
		   $avgCount50BWD2= $sumCount50BWD2/($count32/2);

		       $avgCount51FWD2= $sumCount51FWD2/($count32/2);
		   $avgCount51BWD2= $sumCount51BWD2/($count32/2);

		   $avgCount52FWD2= $sumCount52FWD2/($count32/2);
		   $avgCount52BWD2= $sumCount52BWD2/($count32/2);

		   $avgCount53FWD2= $sumCount53FWD2/($count32/2);
		   $avgCount53BWD2= $sumCount53BWD2/($count32/2);

		   $avgCount54FWD2= $sumCount54FWD2/($count32/2);
		   $avgCount54BWD2= $sumCount54BWD2/($count32/2);

		   $avgCount55FWD2= $sumCount55FWD2/($count32/2);
		   $avgCount55BWD2= $sumCount55BWD2/($count32/2);

		    $avgCount56FWD2= $sumCount56FWD2/($count32/2);
		   $avgCount56BWD2= $sumCount56BWD2/($count32/2);

		     $avgCount57FWD2= $sumCount57FWD2/($count32/2);
		   $avgCount57BWD2= $sumCount57BWD2/($count32/2);

		   $avgCount58FWD2= $sumCount58FWD2/($count32/2);
		   $avgCount58BWD2= $sumCount58BWD2/($count32/2);

		   $avgCount59FWD2= $sumCount59FWD2/($count32/2);
		   $avgCount59BWD2= $sumCount59BWD2/($count32/2);

		   $avgCount60FWD2= $sumCount60FWD2/($count32/2);
		   $avgCount60BWD2= $sumCount60BWD2/($count32/2);

		       $avgCount61FWD2= $sumCount61FWD2/($count32/2);
		   $avgCount61BWD2= $sumCount61BWD2/($count32/2);

		   $avgCount62FWD2= $sumCount62FWD2/($count32/2);
		   $avgCount62BWD2= $sumCount62BWD2/($count32/2);

		   $avgCount63FWD2= $sumCount63FWD2/($count32/2);
		   $avgCount63BWD2= $sumCount63BWD2/($count32/2);

		   $avgCount64FWD2= $sumCount64FWD2/($count32/2);
		   $avgCount64BWD2= $sumCount64BWD2/($count32/2);

		   $avgCount65FWD2= $sumCount65FWD2/($count32/2);
		   $avgCount65BWD2= $sumCount65BWD2/($count32/2);

		    $avgCount66FWD2= $sumCount66FWD2/($count32/2);
		   $avgCount66BWD2= $sumCount66BWD2/($count32/2);

		     $avgCount67FWD2= $sumCount67FWD2/($count32/2);
		   $avgCount67BWD2= $sumCount67BWD2/($count32/2);

		   $avgCount68FWD2= $sumCount68FWD2/($count32/2);
		   $avgCount68BWD2= $sumCount68BWD2/($count32/2);

		   $avgCount69FWD2= $sumCount69FWD2/($count32/2);
		   $avgCount69BWD2= $sumCount69BWD2/($count32/2);

		   $avgCount70FWD2= $sumCount70FWD2/($count32/2);
		   $avgCount70BWD2= $sumCount70BWD2/($count32/2);

		       $avgCount71FWD2= $sumCount71FWD2/($count32/2);
		   $avgCount71BWD2= $sumCount71BWD2/($count32/2);

		   $avgCount72FWD2= $sumCount72FWD2/($count32/2);
		   $avgCount72BWD2= $sumCount72BWD2/($count32/2);

		   $avgCount73FWD2= $sumCount73FWD2/($count32/2);
		   $avgCount73BWD2= $sumCount73BWD2/($count32/2);

		   $avgCount74FWD2= $sumCount74FWD2/($count32/2);
		   $avgCount74BWD2= $sumCount74BWD2/($count32/2);

		   $avgCount75FWD2= $sumCount75FWD2/($count32/2);
		   $avgCount75BWD2= $sumCount75BWD2/($count32/2);

		    $avgCount76FWD2= $sumCount76FWD2/($count32/2);
		   $avgCount76BWD2= $sumCount76BWD2/($count32/2);

		     $avgCount77FWD2= $sumCount77FWD2/($count32/2);
		   $avgCount77BWD2= $sumCount77BWD2/($count32/2);

		   $avgCount78FWD2= $sumCount78FWD2/($count32/2);
		   $avgCount78BWD2= $sumCount78BWD2/($count32/2);

		   $avgCount79FWD2= $sumCount79FWD2/($count32/2);
		   $avgCount79BWD2= $sumCount79BWD2/($count32/2);

		   $avgCount80FWD2= $sumCount80FWD2/($count32/2);
		   $avgCount80BWD2= $sumCount80BWD2/($count32/2);

		       $avgCount81FWD2= $sumCount81FWD2/($count32/2);
		   $avgCount81BWD2= $sumCount81BWD2/($count32/2);

		   $avgCount82FWD2= $sumCount82FWD2/($count32/2);
		   $avgCount82BWD2= $sumCount82BWD2/($count32/2);

		   $avgCount83FWD2= $sumCount83FWD2/($count32/2);
		   $avgCount83BWD2= $sumCount83BWD2/($count32/2);

		   $avgCount84FWD2= $sumCount84FWD2/($count32/2);
		   $avgCount84BWD2= $sumCount84BWD2/($count32/2);

		   $avgCount85FWD2= $sumCount85FWD2/($count32/2);
		   $avgCount85BWD2= $sumCount85BWD2/($count32/2);

		    $avgCount86FWD2= $sumCount86FWD2/($count32/2);
		   $avgCount86BWD2= $sumCount86BWD2/($count32/2);

		     $avgCount87FWD2= $sumCount87FWD2/($count32/2);
		   $avgCount87BWD2= $sumCount87BWD2/($count32/2);

		   $avgCount88FWD2= $sumCount88FWD2/($count32/2);
		   $avgCount88BWD2= $sumCount88BWD2/($count32/2);

		   $avgCount89FWD2= $sumCount89FWD2/($count32/2);
		   $avgCount89BWD2= $sumCount89BWD2/($count32/2);

		   $avgCount90FWD2= $sumCount90FWD2/($count32/2);
		   $avgCount90BWD2= $sumCount90BWD2/($count32/2);

		       $avgCount91FWD2= $sumCount91FWD2/($count32/2);
		   $avgCount91BWD2= $sumCount91BWD2/($count32/2);

		   $avgCount92FWD2= $sumCount92FWD2/($count32/2);
		   $avgCount92BWD2= $sumCount92BWD2/($count32/2);

		   $avgCount93FWD2= $sumCount93FWD2/($count32/2);
		   $avgCount93BWD2= $sumCount93BWD2/($count32/2);

		   $avgCount94FWD2= $sumCount94FWD2/($count32/2);
		   $avgCount94BWD2= $sumCount94BWD2/($count32/2);

		   $avgCount95FWD2= $sumCount95FWD2/($count32/2);
		   $avgCount95BWD2= $sumCount95BWD2/($count32/2);

		    $avgCount96FWD2= $sumCount96FWD2/($count32/2);
		   $avgCount96BWD2= $sumCount96BWD2/($count32/2);

		     $avgCount97FWD2= $sumCount97FWD2/($count32/2);
		   $avgCount97BWD2= $sumCount97BWD2/($count32/2);

		   $avgCount98FWD2= $sumCount98FWD2/($count32/2);
		   $avgCount98BWD2= $sumCount98BWD2/($count32/2);

		   $avgCount99FWD2= $sumCount99FWD2/($count32/2);
		   $avgCount99BWD2= $sumCount99BWD2/($count32/2);

		   $avgCount100FWD2= $sumCount100FWD2/($count32/2);
		   $avgCount100BWD2= $sumCount100BWD2/($count32/2);

		$count222=0;
		}

		if((($token2 cmp "[INFO]  Avg time per fwd")==0)||(($token2 cmp "[INFO]  Avg time per bwd")==0)){
	
		 my $test45 = sprintf("=(C%d/E%d)*100-100",$row2+1-$tempRow2+3,$row2+1-$tempRow2+3);
		  $worksheet1->write($row2-$tempRow2+3,10, $test45);
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
 $worksheet1->write($row1122-$tempRow1122+3, $col1122, $token1122);
 }

 
	my $test3 = sprintf("=(G%d/I%d)*100-100",$row1122+1-$tempRow1122+3,$row1122+1-$tempRow1122+3);

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




 
			

if ($count22==1){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount1BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount1FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==2){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount2BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount2FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==3){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount3BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount3FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==4){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount4BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount4FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==5){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount5BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount5FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==6){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount6BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount6FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==7){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount7BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount7FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==8){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount8BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount8FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==9){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount9BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount9FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==10){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount10BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount10FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==11){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount11BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount11FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==12){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount12BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount12FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==13){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount13BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount13FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if($count22==14){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount14BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount14FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==15){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount15BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount15FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==16){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount16BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount16FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==17){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount17BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount17FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==18){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount18BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount18FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if ($count22==19){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount19BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount19FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}
if($count22==20){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount20BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount20FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }
}if($count22==21){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount21BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount21FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  
	 }
}

if($count22==22){
if(	$flag41122==1){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount22BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	 }if(	$flag41122==0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount22FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  
	 }
}


if($count22==23){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount23BWD2!=0){

		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount23BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount23FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount23FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }
}
}

if($count22==24){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount24BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount24BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount24FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount24FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==25){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount25BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount25BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount25FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount25FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==26){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount26BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount26BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount26FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount26FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==27){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount27BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount27BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount27FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount27FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}

if($count22==28){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount28BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount28BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount28FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount28FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==29){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount29BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount29BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount29FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount29FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==30){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount30BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount30BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount30FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount30FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}


if($count22==31){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount31BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount31BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount31FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount31FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==32){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount32BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount32BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount32FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount32FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==33){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount33BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount33BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount33FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount33FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}

if($count22==34){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount34BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount34BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount34FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount34FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==35){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount35BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount35BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount35FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount35FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==36){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount36BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount36BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount36FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount36FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}


if($count22==37){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount37BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount37BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount37FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount37FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==38){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount38BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount38BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount38FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount38FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==39){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount39BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount39BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount39FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount39FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}

if($count22==40){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount40BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount40BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount40FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount40FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==41){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount41BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount41BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount41FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount41FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==42){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount42BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount42BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount42FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount42FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}


if($count22==43){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount43BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount43BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount43FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount43FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==44){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount26BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount44BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount44FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount44FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==45){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount45BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount45BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount45FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount45FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}

if($count22==46){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount46BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount46BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount46FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount46FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==47){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount47BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount47BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount47FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount47FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
	 }}
}

if($count22==48){
if($count22<$stageCount){
if(	$flag41122==1){
if($avgCount48BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount48BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount48FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount48FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }}
}


if($count22==49){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount49BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount49BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount49FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount49FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	  
	 }
}}

if($count22==50){
if($count22<=$stageCount){
if(	$flag41122==1){
if($avgCount50BWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount50BWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);}
	 }if(	$flag41122==0){
	 if($avgCount50FWD2!=0){
		    $worksheet1->write($row1122-$tempRow1122+3, 8, $avgCount50FWD2);
	 $worksheet1->write($row1122-$tempRow1122+3, 9, "ms");
	  $worksheet1->write($row1122-$tempRow1122+3,10, $test3);
	  }
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

