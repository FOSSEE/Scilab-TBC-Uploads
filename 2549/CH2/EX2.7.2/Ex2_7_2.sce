//Ex2.7.2
//reverse saturation current =?
clc;
clear;
If=10*10^-3;
Vf=0.3;
T=27;//temp in celsius
T=T+273;//temp in kelvin
n=1//n is emission coefficient for Ge =1
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T
Io=If/(%e^(Vf/(n*Vt))-1)//diode current equation
disp( 'nA',Io*10^9,'reverse saturation current is :')

