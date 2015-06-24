//Exa 4.6
clc;
clear;
close;
//given data :
gm=10;//in mS
gm=gm*10^-3;//in S
IDSS=10;//in uAmpere
IDSS=IDSS*10^-6;//in Ampere
//VGS(OFF):VGS=VP
//Formula : gm=gmo=-2*IDSS/VP=-2*IDSS/VG(Off)
VGS_OFF=-2*IDSS/gm;//in Volt
disp(VGS_OFF*1000,"VGS(OFF) in mV : ");