// Exa 6.29
format('v',7);clc;clear;close;
// Given data
f = 1;//frequency in kHz
f = f * 10^3;// in Hz
C1 = 0.2;// in µF
C1 = C1 * 10^-6;// in F
XC1= 1/(2*%pi*f*C1);// in Ω
C2 = 0.1;// in µF
C2 = C2 * 10^-6;// in F
XC2= 1/(2*%pi*f*C2);// in Ω
R2= 300;// in Ω
R3= 500;// in Ω
Z1= 0-%i*XC1;// in Ω
Z2= R2*-%i*XC2/(R2-%i*XC2);// in Ω
Z3=R3;// in Ω
// For balanced condition
Z4= Z2*Z3/Z1;// in Ω
R4= real(Z4);// in Ω
XL4= imag(Z4);// in Ω
L4= XL4/(2*%pi*f);// in H
L4= L4*10^3;// in mH
disp("Components of arm CD : ")
disp("L4= "+string(L4)+" mH")
disp("R4= "+string(R4)+" Ω")
