// Exa 6.24
format('v',7);clc;clear;close;
// Given data
R2 = 842;//resistance in ohm
C2 = 0.135;//capacitance in µF
C2 = C2 * 10^-6;// in F
f=1000;//frequency in Hz
XC2= 1/(2*%pi*f*C2);
R3= 10;//resistance in ohm
C4= 1*10^-6;//capacitance in F
XC4= 1/(2*%pi*f*C4);
Z2= R2-%i*XC2;//impedance in ohm
Z3= R3;//impedance in ohm
Z4= -%i*XC4;//impedance in ohm
// From balance equation
Z1= Z2*Z3/Z4;// in Ω
R1= real(Z1);// in Ω
XL1= abs(imag(Z1));// in Ω
L1= XL1/(2*%pi*f);// in F
L1= L1*10^3;// in mH
disp(R1,"The value of R1 in Ω is : ")
disp(L1,"The value of L1 in mH is : ")



