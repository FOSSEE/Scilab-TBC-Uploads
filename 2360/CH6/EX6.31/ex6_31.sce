// Exa 6.31
format('v',7);clc;clear;close;
// Given data
f = 450;//frequency in Hz
omega = 2*%pi*f;// in rad/sec
R2 = 4.8;// in ohm
R3 = 200;// in ohm
R4 = 2850;// in ohm
C2 = 0.5;// in µF
C2 = C2*10^-6;// in F
XC2= 1/(2*%pi*f*C2);// in Ω
r2 = 0.4;// in ohm
Z2= (R2+r2)-%i*XC2;// in Ω
Z3= R3;// in Ω
Z4= R4;// in Ω
// For balanced condition
Z1= Z2*Z3/Z4;// in Ω
r1= real(Z1);// in Ω
XC1= abs(imag(Z1));// in Ω
C1= 1/(2*%pi*f*XC1);// in F
Df= 2*%pi*f*C1*r1;// dissipating factor
C1= C1*10^6;// in µF
disp(r1,"The value of r1 in Ω is : ")
disp(C1,"The value of C1 in µF is : ")
disp(Df,"The dissipating factor is : ")


