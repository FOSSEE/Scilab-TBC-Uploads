//Ex:4.27
clc;
clear;
close;
N=10;// number of turns
r=0.4;// radius in m
E=200*10^-6;// E-field in V/m
L=50*10^-6;// inductance in Henry
R=2;// resistance in ohm
f=1.5;// frequency in MHz
f1=1.5*10^6;// frequency in Hz
y=300/f;// wavelength in m
A=%pi*r^2;// area in m^2
Vrms=(2*%pi*E*A*N)/y;// e.m.f in volt
Q=(2*%pi*f1*L)/R;// 
Vc=Vrms*Q;// voltage across the capacitor in volt
printf("The voltage across the capacitor = %f mV", Vc*1000);