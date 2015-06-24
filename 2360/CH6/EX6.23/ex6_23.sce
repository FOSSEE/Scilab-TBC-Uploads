// Exa 6.23
format('v',7);clc;clear;close;
// Given data
f = 1;// in kHz
f = f * 10^3;// in Hz
R1 = 600;// in ohm
C1 = 1;// in µF
C1 = C1 * 10^-6;// in F
XC1= 1/(2*%pi*f*C1);
R2 = 100;// in ohm
R3 = 1;// in k ohm
R3 = R3 * 10^3;// in ohm
omega = 2*%pi*f;// in rad/sec
Y1= 1/R1+%i*1/XC1;// in Ω
Z2=R2;// in Ω
Z3= R3;// in Ω
// From balance equation, Z1*Z4= Z2*Z3
Z4= Z2*(Z3*Y1);// in Ω
R4= real(Z4);// in Ω
XL4= abs(imag(Z4));// in Ω
L4= XL4/(2*%pi*f);// in F
disp("Rx= "+string(R4)+" Ω")
disp("Lx= "+string(L4)+" H")





