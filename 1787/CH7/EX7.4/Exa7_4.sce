//Exa 7.4
clc;
clear;
close;
//given data :
gm=10;//in mS
IDSS=10;//in uA
IDSS=IDSS-10^-6;//in Ampere
disp("VGS(OFF) : VGS=VP");
disp("gm=gmo=-2*IDSS/VP=-2*IDSS/VGS(OFF)");
VGS_OFF=-2*IDSS/gm
disp(round(VGS_OFF),"VGS(OFF) in mV :");