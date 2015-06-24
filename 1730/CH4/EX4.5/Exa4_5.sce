//Exa 4.5
clc;
clear;
close;
//given data :
VP=-4.5;//in Volt
IDSS=10;//in mAmpere
IDS=2.5;//in mAmpere
//Formula : IDS=IDSS*[1-VGS/VP]^2
VGS=VP*(1-sqrt(IDS/IDSS));//in Volt
gm=(-2*IDSS*10^-3)*(1-VGS/VP)/VP;//in mA/V or mS
disp(gm*1000,"Transconductance in mA/V : ");