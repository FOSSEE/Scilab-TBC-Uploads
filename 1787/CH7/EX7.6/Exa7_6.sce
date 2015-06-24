//Exa 7.6
clc;
clear;
close;
//given data :
VP=-3;//in Volt
IDSS=8.7;//in mA
IDSS=IDSS*10^-3;//in mA
VGS=-1;//in Volt
ID=IDSS*(1-VGS/VP)^2;//in Ampere
disp(ID*1000,"ID in mA : ")
gmo=-2*IDSS/VP;//in mS
disp(gmo*1000,"gmo in mS : ");
gm=gmo*(1-VGS/VP);//in mS
disp(gm*1000,"gm in mS : ");