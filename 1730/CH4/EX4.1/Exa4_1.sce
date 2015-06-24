//Exa 4.1
clc;
clear;
close;
//given data :
format('v',11)
VGS=10;//in Volt
IG=0.001;//in uAmpere
IG=IG*10^-6;//in Ampere
RGS=VGS/IG;//in Ohm
disp(RGS*10^-6,"Resistance between gate and source in Mohm : ");