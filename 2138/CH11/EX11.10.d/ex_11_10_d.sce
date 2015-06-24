//Example 11.10.d // voltage across te coil
clc;
clear;
close;
R=5.94;//in ohms
L=0.35;//IN HENRY
C=35;// in micro farads
V=200;//IN VOLTS it is given wrong in the book
F=50;// IN HERTS
Xc=(1/(2*%pi*F*C*10^-6));// capacitive reactance in ohms
Xl=2*%pi*F*L;// inductive reactance in ohms
Z=sqrt(R^2+(Xl-Xc)^2);// impedence in ohms
I=V/round(Z);// in amperes
pf=R/round(Z);// power factor
Zc=sqrt(R^2+Xl^2);//impedence of the coil
Vl=I*Zc;//voltage drop across the coil
disp(Vl,"voltage across the coil in volts is")
