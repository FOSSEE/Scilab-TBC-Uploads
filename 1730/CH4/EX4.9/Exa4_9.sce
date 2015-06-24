//Exa 4.9
clc;
clear;
close;
//given data :
IDSS=8.4;//in mAmpere
IDSS=IDSS*10^-3;//in Ampere
VP=-3;//in Volt
VGS=-1.5;//in Volt
//ID
ID=IDSS*[1-VGS/VP]^2
disp(ID*1000,"Drain current ID in mA : ");
//gmo
gmo=-2*IDSS/VP;//in S
disp(gmo*1000,"Transconductance for VGS=0V in mA/V or mS : ");
gm=gmo*(1-VGS/VP);//in S
disp(gm*1000,"Transconductance in mA/V or mS : ");