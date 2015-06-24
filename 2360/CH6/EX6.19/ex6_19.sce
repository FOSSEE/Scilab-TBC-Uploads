// Exa 6.19
format('v',7);clc;clear;close;
// Given data
f = 1000;//frequency in Hz
C1 = 0.2;//capacitance in µF
C1 = C1 * 10^-6;// in F
XC1= 1/(2*%pi*f*C1);
R2= 500;// in Ω
R3= 300;// in Ω
C3= 0.1*10^-6;// in F
XC3= 1/(2*%pi*f*C3);
omega = 2*%pi*f;// in rad/sec
Z1= 0-%i*XC1;// in Ω
Z2= R2;// in Ω
Y3= 1/R3+%i*1/XC3;// in Ω
Z3= R3*XC3/(R3+XC3);// in Ω
Z4= Z2/(Z1*Y3);// in Ω
R4= real(Z4);// in Ω
XL4= abs(imag(Z4));// in Ω
L4= XL4/(2*%pi*f);// in F
L4= L4*10^3;// in mH
disp("The components of branch CD : ")
disp("Rx= "+string(R4)+" Ω")
disp("Lx= "+string(L4)+" mH")



