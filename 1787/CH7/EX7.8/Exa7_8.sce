//Exa 7.8
clc;
clear;
close;
//given data :
VP=-4.5;//in Volt
IDSS=9;//in mA
IDSS=IDSS*10^-3;//in Ampere
IDS=3;//in mA
IDS=IDS*10^-3;//in Ampere
VGS=VP*(1-sqrt(IDS/IDSS));//in Volt
disp(VGS,"IDS = 3 mA when VGS(in Volt) is :  ");
gm=(-2*IDSS/VP)*(1-VGS/VP);//in mS
disp(gm*1000,"IDS = 3 mA when gm(in mS) is :  ");