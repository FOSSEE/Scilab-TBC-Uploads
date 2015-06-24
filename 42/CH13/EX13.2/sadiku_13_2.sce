clear;
clc;
format('v',6);
c=3*10^8;
f=50*10^6;
disp(c/(2*f),'Length of halfdipole in meter');
function[P,I]=curpow(E,P,r)
n=120*%pi; R=73;
I=E*2*r*%pi*sin(P)/(n*(cos((%pi/2)*cos(P))));   
P=(I*I*R)/2;
disp(I*1000,'Current fed to antenna in mA');
disp(P*1000,'Power radiated by Antenna in mWatt');
endfunction
curpow((10*(10)^-6),%pi/2,500*10^3);
Zl=73+42.5*%i,Zo=75;
T=(Zl-Zo)/(Zl+Zo);
s=(1+abs(T))/(1-abs(T));
disp(s,'Standing wave ratio');