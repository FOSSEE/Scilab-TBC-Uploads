clc;
clear all;
format('v',6);
Dt=1.64;
Dr=1.64;
Pt=1;
c=3*10^8;
f=100*10^6;
r=1*10^3;
lemda_air=c/f;
Aer=lemda_air*Dr/(4*%pi);
P=Pt*Dt/(4*%pi*r^2);
Pr=P*Aer;
Pr=Pr*10^9;.....//in nW
disp(Pr,"The received power(in nW)=");
