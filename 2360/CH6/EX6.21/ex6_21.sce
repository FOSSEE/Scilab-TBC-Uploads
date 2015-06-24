// Exa 6.21
format('v',7);clc;clear;close;
// Given data
f = 1;// in kHz
f = f * 10^3;// in Hz
omega = 2*%pi*f;// in rad/sec
Z1 = 200;// in ohm
R2 = 200;// in ohm
C2 = 5;// in µF
C2 = C2 * 10^-6;// in F
XC2= 1/(2*%pi*f*C2);
Z2= R2-%i*XC2;// in Ω
R3 = 500;// in ohm
C3 = 0.2;// in µF
C3 = C3 * 10^-6;// in F
XC3= 1/(2*%pi*f*C3);
Z3= R3-%i*XC3;// in Ω
// From balance equation, Z1*Z4= Z2*Z3
Z4= Z2*Z3/Z1;// in Ω
R4= real(Z4);// in Ω
XC4= abs(imag(Z4));// in Ω
C4= 1/(2*%pi*f*XC4);// in F
C4= C4*10^6;// in µF
disp("The components of Zx : ")
disp("Rx= "+string(R4)+" Ω")
disp("Cx= "+string(C4)+" nF")


