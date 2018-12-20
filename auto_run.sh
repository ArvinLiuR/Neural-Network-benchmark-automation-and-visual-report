cd aliu/home/aliu/miopen-benchmark
make 
make benchmark
cp /home/wxn/aliu/home/aliu/miopen-benchmark/alexnet.log /home/wxn/aliu/perl_shell/temp
cp /home/wxn/aliu/home/aliu/miopen-benchmark/resnet50.log /home/wxn/aliu/perl_shell/temp
cp /home/wxn/aliu/home/aliu/miopen-benchmark/vgg_16.log /home/wxn/aliu/perl_shell/temp
cp /home/wxn/aliu/home/aliu/miopen-benchmark/vgg_19.log /home/wxn/aliu/perl_shell/temp
cp /home/wxn/aliu/home/aliu/miopen-benchmark/squeeze_net.log /home/wxn/aliu/perl_shell/temp
cp /home/wxn/aliu/home/aliu/miopen-benchmark/dense_net.log /home/wxn/aliu/perl_shell/temp
cd ..
cd ..
cd ..
cd perl_shell
cd temp
mv alexnet.log alexnet_1.log
mv resnet50.log resnet50_1.log
mv vgg_16.log vgg_16_1.log
mv vgg_19.log vgg_19_1.log
mv squeeze_net.log squeeze_net_1.log
mv dense_net.log dense_net_1.log
cd ..
mv alexnet.log alexnet_2.log
mv resnet50.log resnet50_2.log
mv vgg_16.log vgg_16_2.log
mv vgg_19.log vgg_19_2.log
mv squeeze_net.log squeeze_net_2.log
mv dense_net.log dense_net_2.log
cp /home/wxn/aliu/perl_shell/temp/alexnet_1.log /home/wxn/aliu/perl_shell
cp /home/wxn/aliu/perl_shell/temp/resnet50_1.log /home/wxn/aliu/perl_shell
cp /home/wxn/aliu/perl_shell/temp/vgg_16_1.log /home/wxn/aliu/perl_shell
cp /home/wxn/aliu/perl_shell/temp/vgg_19_1.log /home/wxn/aliu/perl_shell
cp /home/wxn/aliu/perl_shell/temp/squeeze_net_1.log /home/wxn/aliu/perl_shell
cp /home/wxn/aliu/perl_shell/temp/dense_net_1.log /home/wxn/aliu/perl_shell
sed -i "s/alexnet_1.log/resnet50_1.log/g" 2Excel_onesheet.pl
sed -i "s/alexnet_2.log/resnet50_2.log/g" 2Excel_onesheet.pl
sed -i "s/AlexNet/ResNet50/g" 2Excel_onesheet.pl
sed -i "s/new('AlextNet_Comparison.xls')/new('ResNet50_Comparison.xls')/g" 2Excel_onesheet.pl
perl 2Excel_onesheet.pl
sed -i "s/resnet50_1.log/vgg_16_1.log/g" 2Excel_onesheet.pl
sed -i "s/resnet50_2.log/vgg_16_2.log/g" 2Excel_onesheet.pl
sed -i "s/ResNet50/VGG_16/g" 2Excel_onesheet.pl
sed -i "s/new('ResNet50_Comparison.xls')/new('VGG16_Comparison.xls')/g" 2Excel_onesheet.pl
perl 2Excel_onesheet.pl
sed -i "s/vgg_16_1.log/vgg_19_1.log/g" 2Excel_onesheet.pl
sed -i "s/vgg_16_2.log/vgg_19_2.log/g" 2Excel_onesheet.pl
sed -i "s/VGG_16/VGG_19/g" 2Excel_onesheet.pl
sed -i "s/new('VGG16_Comparison.xls')/new('VGG19_Comparison.xls')/g" 2Excel_onesheet.pl
perl 2Excel_onesheet.pl
sed -i "s/vgg_19_1.log/squeeze_net_1.log/g" 2Excel_onesheet.pl
sed -i "s/vgg_19_2.log/squeeze_net_2.log/g" 2Excel_onesheet.pl
sed -i "s/VGG_19/Squeeze_Net/g" 2Excel_onesheet.pl
sed -i "s/new('VGG19_Comparison.xls')/new('Squeeze_Net_Comparison.xls')/g" 2Excel_onesheet.pl
perl 2Excel_onesheet.pl
sed -i "s/squeeze_net_1.log/dense_net_1.log/g" 2Excel_onesheet.pl
sed -i "s/squeeze_net_2.log/dense_net_2.log/g" 2Excel_onesheet.pl
sed -i "s/Squeeze_Net/Dense_Net/g" 2Excel_onesheet.pl
sed -i "s/new('Squeeze_Net_Comparison.xls')/new('Dense_Net_Comparison.xls')/g" 2Excel_onesheet.pl
perl 2Excel_onesheet.pl
sed -i "s/dense_net_1.log/alexnet_1.log/g" 2Excel_onesheet.pl
sed -i "s/dense_net_2.log/alexnet_2.log/g" 2Excel_onesheet.pl
sed -i "s/Dense_Net/AlexNet/g" 2Excel_onesheet.pl
sed -i "s/new('Dense_Net_Comparison.xls')/new('AlextNet_Comparison.xls')/g" 2Excel_onesheet.pl
perl 2Excel_onesheet.pl
rm -f /home/wxn/aliu/perl_shell/alexnet_2.log
rm -f /home/wxn/aliu/perl_shell/resnet50_2.log
rm -f /home/wxn/aliu/perl_shell/vgg_16_2.log
rm -f /home/wxn/aliu/perl_shell/vgg_19_2.log
rm -f /home/wxn/aliu/perl_shell/squeeze_net_2.log
rm -f /home/wxn/aliu/perl_shell/dense_net_2.log
mv alexnet_1.log alexnet.log
mv resnet50_1.log resnet50.log
mv vgg_16_1.log vgg_16.log
mv vgg_19_1.log vgg_19.log
mv squeeze_net_1.log squeeze_net.log
mv dense_net_1.log dense_net.log
cd temp
rm -f /home/wxn/aliu/perl_shell/alexnet_1.log
rm -f /home/wxn/aliu/perl_shell/resnet50_1.log
rm -f /home/wxn/aliu/perl_shell/vgg_16_1.log
rm -f /home/wxn/aliu/perl_shell/vgg_19_1.log
rm -f /home/wxn/aliu/perl_shell/squeeze_net_1.log
rm -f /home/wxn/aliu/perl_shell/dense_net_1.log





