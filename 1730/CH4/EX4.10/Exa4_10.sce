//Exa 4.10
clc;
clear;
close;
//given data :
VP=-4.5;//in Volt
IDSS=9;//in mAmpere
IDSS=IDSS*10^-3;//in Ampere
IDS=3;//in mAmpere
IDS=IDS*10^-3;//in Ampere
//Formula : IDS=IDSS*[1-VGS/VP]^2
VGS=VP*(1-sqrt(IDS/IDSS));//in Volt
disp(VGS,"ID=3mA at VGS in Volt :");
gm=(-2*IDSS)*(1-VGS/VP)/VP;//in mA/V or mS
disp(gm*1000,"Transconductance in mA/V or mS: ");