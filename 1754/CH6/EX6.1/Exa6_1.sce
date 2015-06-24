//Exa 6.1
clc;
clear;
close;
//given data
VGS1=-3.1;//in Volt
VGS2=-3;//in Volt
ID1=1;//in mA
ID2=1.3;//in mA
delVGS=VGS2-VGS1;//in Volts
delID=ID2-ID1;//in mA
gm=delID*10^-3/delVGS;//in mhos
disp(gm,"Transconductance in mhos : ");