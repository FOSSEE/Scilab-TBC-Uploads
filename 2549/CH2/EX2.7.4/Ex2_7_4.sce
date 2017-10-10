//Ex2.7.4
//reverse saturation current =?
clc;
clear;
//given
If=1*10^-3;
Vf=0.15;//forward breakdown voltage of diode 
T=27;//temp in celsius
T=T+273;//temp in kelvin
n=1//n is emission coefficient for Ge =1
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T
//expression for reverse saturation current
Io=If/(%e^(Vf/(n*Vt))-1)//diode current equation
disp( 'uA',Io*10^6,'reverse saturation current is :')


