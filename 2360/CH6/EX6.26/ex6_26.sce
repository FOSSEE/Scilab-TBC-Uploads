// Exa 6.26
format('v',7);clc;clear;close;
// Given data
R=1.36;//resistance in ohm
r2= 32.7;//resistance in ohm
L2= 47.8;//inductance in mH
L2= L2*10^-3;// in H
f=1000;//frequency in Hz
XL2=2*%pi*f*L2;// in Ω
Z3 = 100;// in ohm
Z4 = 100;// in ohm
Z2= r2+%i*XL2;// in ohm
// Under balance condition
Z1= Z2*Z3/Z4;// in ohm
R1= real(Z1);
r1= R1-R;//resistance of the coil in ohm
XL1= imag(Z1);// in ohm
L1= XL1/(2*%pi*f);//inductance of the coil in F
L1= L1*10^3;// in mH
disp(r1,"The resistance of the coil in Ω is : ")
disp(L1,"The inductance of the coil in mH is : ")
