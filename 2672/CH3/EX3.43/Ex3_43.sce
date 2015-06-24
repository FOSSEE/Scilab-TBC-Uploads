//Example 3_43
clc;
clear;
close;
format('v',6);
//given data :
XL1=6;//ohm
R2=10;//ohm
XC2=4;//ohm
R1=poly(0,'R1');
Z1=R1+%i*XL1;//ohm
Z2=R2-%i*XC2;//ohm
Z=Z1*Z2/(Z1+Z2);//ohm
//Imaginary part of Z will be zero
//For Calculation
eq=imag(numer(Z)*denom(Z'));//equaltion of imaginary part
R1=roots(eq);//ohm
R1=R1(1);//ohm//leaving -ve value
disp(R1,"Value of R1(ohm)");
