//Exa 7.7
clc;
clear;
close;
//given data :
VP=-3;//in Volt
IDSS=8.4;//in mA
VGS=-1.5;//in Volt
ID=IDSS*(1-VGS/VP)^2;//in mA
disp(ID,"Drain current in mA : ");
gmo=-2*IDSS/VP;//in mS
gm=gmo*(1-VGS/VP);//in mS
disp(gm,"gm in mS : ");