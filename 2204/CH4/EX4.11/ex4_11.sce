// Exa 4.11
clc;
clear;
close;
// Given data
Vrms= 10;// in mV
f= 2*10^3;// in kHz
C= 2*10^-6;// in F
R= 50*10^3;// in ohm
SF= -1/(C*R);// scale factor
//Vout= -1/(R*C)*sqrt(2)*Vrms*integrate('sind(2*%pi*f*t)','t',0,t);// in mV
//Vout= 1/(R*C)*sqrt(2)*Vrms/(2*%pi*f)*(cos(4000*t)-1);// in mV
V= 1/(R*C)*sqrt(2)*Vrms/(2*%pi*f);// (assumed)
disp("Output voltage in mV is : "+string(V)+"*(cos(4000 *t)-1)) mV")
