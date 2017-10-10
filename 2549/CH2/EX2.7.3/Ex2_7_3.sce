//Ex2.7.3
//forward diode current =?
clc
clear
Io=1*10^-9;
Vf=0.3;
T=27;//temp in celsius
T=T+273;//temp in kelvin
n=1;//n is emission coefficient for Ge =1
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T
If=Io*(exp(Vf/(n*Vt))-1)
disp( 'mA',If*10^3,'forward diode current is :')
