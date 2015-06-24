//Example 11.9 // capacitance
clc;
clear;
close;
W=100;//in watts
V=110;//in volts
Vc=220;//in volts
f=50;//in hertz
I=W/V;// in amperes
R=V/I;//in ohms
Z=Vc/I;// in ohms
Xc=sqrt(Z^2-R^2);// IN OHMS
C=(1/(2*%pi*f*Xc));// in farads
disp(C*10^6,"capacitance in micro farads is")
