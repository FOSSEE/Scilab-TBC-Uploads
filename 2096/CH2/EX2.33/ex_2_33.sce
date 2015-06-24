//Example 2.33 //inductance and resistance
clc;
clear;
close;
//given data :
C1=40; // in pico-farad
C2=48; // in pico-farad
f=4; // in MHz
R1=60; // additional series resistance in ohm
C0=(C1+C2)/2;
w=2*%pi*f*10^6;
L=(1/(4*%pi^2*(f*10^6)^2*(C0*10^-6)));//
X= ((w*L*10^6)-(1/(w*C2*10^-12)))^2;//
R= (X-R1^2)/120;// unknown resistance in ohms
disp(L*10^12,"inductance in MH")
disp(R,"unknown resistance in ohms")
//resistance is calculated wrong in the textbbok

