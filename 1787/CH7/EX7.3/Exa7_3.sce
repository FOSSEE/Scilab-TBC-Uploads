//Exa 7.3
clc;
clear;
close;
//given data :
VP=-4.5;//in Volt
IDSS=10;//in mA
IDS=2.5;//in mA
disp("From shockleys equation, drain source current, IDS=IDSS*(1-VGS/VP)^2 ");
VGS=VP*(1-sqrt(IDS/IDSS));//in Volt
gm=(-2*IDSS/VP)*(1-VGS/VP);//in mA/Volt
disp(gm,"Transconductance in mA/Volt : ");