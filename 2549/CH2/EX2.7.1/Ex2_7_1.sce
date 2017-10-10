//Ex2.7.1
//reverse saturation current =?
clc;
clear;
If=10*10^-3;
Vf=0.75;
T=27;//temp in celsius
T=T+273;//temp in kelvin
n=2;//n is emission coefficient for si =2
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T
Io=If/(%e^(Vf/(n*Vt))-1);
disp( 'nA',Io*10^9,'reverse saturation current is :')
