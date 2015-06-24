// Example 10.9.b;//thermal noise
clc;
clear;
close;
K=1.38*10^-23;//boltzman constt
Ra=4*10^6;//input resistane in ohms
Rb=4*10^6;//matched bias resistane in ohms
Ct=6*10^-12;//total capicatance in farad
T=300;//TEMPERATURE IN KELVIN
Rtl=(Ra*Rb)/(Ra+Rb);//total resistance
B=(1/(2*%pi*Rtl*Ct));//Maximum bandwidth inhertz
it=(((4*K*T)/(Rtl)));//thermal noise
disp(it,"thermal noise in ampere square per hertz")
