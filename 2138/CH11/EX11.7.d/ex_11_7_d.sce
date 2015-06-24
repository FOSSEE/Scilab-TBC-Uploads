//Example 11.7.d // angle of phase differnce 
clc;
clear;
close;
R=40;//in ohms
L=0.07;//IN HENRY
V=223;//IN VOLTS
F=50;// IN HERTS
Xl=2*%pi*F*L;// inductive reactance in ohms
Z=sqrt(R^2+Xl^2);//IMPEDENCE IN OHMS
I=V/Z;//in amperes
csp=R/Z;//pf
phi=acosd(csp);//angle of phase differnce in degree
x=floor(phi);//
y=phi-x;//
disp("angle of phase difference is "+string(x)+" degree and "+string(y*60)+" minutes ")
