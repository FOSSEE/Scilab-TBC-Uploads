//Exa 4.3
clc;
clear;
close;
//given data :
ID2=1.5;//in mAmpere
ID1=1.2;//in mAmpere
delID=ID2-ID1;//in Ampere
VGS1=-4.25;//in Volt
VGS2=-4.10;//in Volt
delVGS=VGS2-VGS1;//in Volt
gm=delID/delVGS;//in Ohm
disp(gm,"Transconductance in mA/V : ");
disp(gm*10^3,"Transconductance in uS : ");