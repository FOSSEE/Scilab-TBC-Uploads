//Ex2.8.2
//dynamic forward resistance r=?

clc;
clear;
Io=0;// negligible
I=1*10^-3;//dc current
//at room temperature
T=27;//temp in celsius
T=T+273;//temp in kelvin
n=2;//n is emission coefficient for Si
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T
R=n*Vt/(I+Io);// exp for dynamic resistance of diode
disp( 'ohm',R,'forward dynamic resistance is :')
