// Exa 6.38
format('v',7);clc;clear;close;
// Given data
f=500;//frequency in Hz
R2 = 2410;//resistance in ohm
R3 = 750;//resistance in ohm
R4 = 64.5;//resistance in ohm
R_C4 = 0.4;//resistance in ohm
C4 = 0.35;//capacitance in µF
C4 = C4 * 10^-6;// in F
XC4= 1/(2*%pi*f*C4);// in Ω
Z4= R4+R_C4-%i*XC4;// in Ω
Z2= R2;// in Ω
Z3= R3;// in Ω
Z1= Z2*Z3/Z4;// in Ω
R1= real(Z1);//resistance of choke coil  in Ω
XL1= imag(Z1);// in Ω
L1= XL1/(2*%pi*f);//inductance of choke coil  in H
disp(R1,"The resistance of choke coil in Ω is : ")
disp(L1,"The inductance of choke coil in H is : ")

