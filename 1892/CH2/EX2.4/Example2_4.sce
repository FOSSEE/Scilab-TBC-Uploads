// Example 2.4

clear; clc; close;
format('v',7);

// Given data
f=50;//in Hz
Z1m=3+%i*2.7;//in ohm
Z1a=7+%i*3;//in ohm
alfa=90;//in degree

//Calculations
//Z1a=7+%i*3-%i*Xc;//in ohm(Xc assumed to be connected in auxiliary winding)
fi_a=90-atand(imag(Z1m),real(Z1m))
R1a=real(Z1a);//in ohm
X1a=imag(Z1a);//in ohm
X=tand(fi_a)*R1a;//in ohm
Xc=X+X1a;//in ohm
C=1/2/%pi/f/Xc;//in Farad
disp(C*10^6,"Value of capacitance in micro farad : ");
//Note : In the book, Torque is calculated even not asked in question and not given the sufficient data to calculate it.
