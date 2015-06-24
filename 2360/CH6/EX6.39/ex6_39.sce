// Exa 6.39
format('v',7);clc;clear;close;
// Given data
f = 50;// in Hz
omega = 2*%pi*f;// in rad/sec
R1 = 50;// in ohm
L1 = 0.1;// in H
XL1= 2*%pi*f*L1;// in Ω
R2= 100;// in Ω
R3= 1000;// in Ω
Z1= R1+%i*XL1;// in Ω
Z2= R2;// in Ω
Z3= R3;// in Ω
// The bridge balance condition
Zx= Z2*Z3/Z1;// in Ω
// Comparing real part
Rx= real(Zx);// in Ω
// Comparing imaginary part
XCx= abs(imag(Zx));// in Ω
Cx= 1/(2*%pi*f*XCx);// in F
disp(Rx,"The value of Rx in Ω is : ")
disp(Cx*10^6,"The value of Cx in µF is : ")
