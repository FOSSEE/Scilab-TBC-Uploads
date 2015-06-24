//Exa 7.1
clc;
clear;
close;
//Given data : 
format('v',5);
l=1;//in km
I=100;//in Ampere
cosfi=0.8;//Power factor(lag) unitless
VC=200;//in volt
IL=60;//in Ampere
cosfi_load=0.9;//Power factor(lag) unitless
R=0.6;//in ohm
XL=0.08;//in ohm
IC=I*(0.8-%i*0.6);//in Ampere
z=(0.06+%i*0.08)/2;//in ohm
VD_BC=z*IC;//in volt
VB=VC+VD_BC;//in volt
IB=IL*(0.9-%i*0.4357)+IC;//in Ampere
VD_AB=z*IB;//in volt
disp(VD_AB,"V.D. from sending end to mid point(in volt) : ");
disp(VD_BC,"V.D. from mid point to the far end(in volt) : ");