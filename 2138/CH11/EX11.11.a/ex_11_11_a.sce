//Example 11.11.a // impedence
clc;
clear;
close;
r1=6;//in ohms
r2=3.95;//in ohms
R=r1+r2;//in ohms
L1=0.21;//IN HENRY
L2=0.14;//in henry
C1=30;// in micro farads
C2=60;//in micro farads
V=220;//IN VOLTS
F=50;// IN HERTS
Xc1=(1/(2*%pi*F*C1*10^-6));// capacitive reactance in ohms
Xc2=(1/(2*%pi*F*C2*10^-6));// capacitive reactance in ohms
Xc=Xc1+Xc2;//IN OHMS
Xl1=2*%pi*F*L1;// inductive reactance in ohms
Xl2=2*%pi*F*L2;// inductive reactance in ohms
Xl=Xl1+Xl2;//in ohms
Z=sqrt(R^2+(Xl-Xc)^2);// impedence in ohms
disp(round(Z),"impedence in ohms is")
