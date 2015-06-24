//Chapter 5, Problem 8, Figure 5.15
clc;
//Resistors R1, R2, R3 in ohm
R1=10;
R2=20;
R3=60;
//Current through R2 in ampere
I2=3;
//Calculating voltage and current
V=I2*R2;
I1=V/R1;
I3=V/R3;
I=I1+I2+I3;
printf("(a) Supply voltage = %f V\n\n\n",V);
printf("(b) Current I = %f A",I)
