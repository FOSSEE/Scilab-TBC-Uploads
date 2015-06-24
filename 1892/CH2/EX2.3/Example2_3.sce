// Example 2.3

clear; clc; close;
format('v',7);

// Given data
Pout=250;//in watt
V1=230;//in volt
f=50;//in Hz
Zm=4.5+%i*3.7;//in ohm
Za=9.5+%i*3.5;//in ohm

//Calculations
//Za=9.5+%i*3.5-%i*Xc;//in ohm(Xc assumed to be connected in auxiliary winding)
fi_a=90-atand(imag(Zm),real(Zm));//in degree
Ra=real(Za);//in ohm
Xa=imag(Za);//in ohm
X=tand(fi_a)*Ra;//in ohm
Xc=X+Xa;//in ohm
C=1/2/%pi/f/Xc;//in Farad
disp(C*10^6,"Value of capacitance in micro farad : ");
//Note : In the book, instead of Capacitance which is asked, Torque is calculated even not asked in question and not given the sufficient data to calculate it.
