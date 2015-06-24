//Example 1.15: 
clc;
clear;
close;
//given data :
e=1.6*10^-19;// electron charge in coulombs
k=1.38*10^-23;//Boltzmann constant in m^2-kg/s^2-K^-1
T=300;//in Kelvin
Vt=(k*T)/e;//in V
Ir1=10^-12;//in A
Ir2=10^-10;//in A
I21=Ir2/Ir1;//
It=2;//mA
I1=It/(1+I21)*10^3;//in micro-A
I2=It*10^3-I1;//in micro-A
I1=I2/I21;//in micro-A
x=((I1*10^-6)/Ir1);//
V=Vt*log10(x)*2.3026;//in V
format('v',6)
disp(V,"diode voltage is ,(V)=")
