//Exa 7.1
clc;
clear;
close;
//given data :
VGS=10;//in Volt
IG=0.001;//in uA
IG=IG*10^-6;//in A
RGS=VGS/IG;//in ohm
disp(RGS/10^6,"Resistance between gate and source in Mohm ; ");