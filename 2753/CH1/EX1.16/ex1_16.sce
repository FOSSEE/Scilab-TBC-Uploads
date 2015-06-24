//Example 1.16: 
clc;
clear;
close;
//given data :
format('v',5)
T=27;//degree Celsius
Tk=273+T;//in Kelvin
e=1.6*10^-19;// electron charge in coulombs
k=1.38*10^-23;//Boltzmann constant in m^2-kg/s^2-K^-1
J=10^4;//in Amp/m^2
Jo=200;//in mA/m^2
x=(J/(Jo*10^-3));//
Ve=((log(x))*k*Tk)/e;//in V
disp(Ve,"voltage to be applied is ,(V)=")
