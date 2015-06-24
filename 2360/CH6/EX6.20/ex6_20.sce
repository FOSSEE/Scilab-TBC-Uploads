// Exa 6.20
format('v',7);clc;clear;close;
// Given data
f = 2;// in kHz
f = f * 10^3;// in Hz
omega = 2*%pi*f;// in rad/sec
Z1 = 10;// in k ohm
Z2 = 50;// in k ohm
R3 = 100;// in k ohm
C3 = 100;// in µF
C3 = C3 * 10^-6;// in F
XC3= 1/(2*%pi*f*C3);
Z3= R3-%i*XC3;// in Ω
// From balance equation, Z1*Z4= Z2*Z3
Z4= Z2*Z3/Z1;// in Ω
R4= real(Z4);// in kΩ
XC4= abs(imag(Z4));// in kΩ
C4= 1/(2*%pi*f*XC4);// in F
C4= C4*10^6;// in µF
disp("The components of branch DC : ")
disp("Rx= "+string(R4)+" kΩ")
disp("Cx= "+string(C4)+" µF")


