// Exa 4.24
clc;
clear;
close;
format('v',8)
// Given data
Z1= 10+15*%i;// in ohm
Z2= 6-8*%i;// in ohm
R1= 10;// in ohm
R2= 6;// in ohm
I_T= 15;// in A
I1= I_T*Z2/(Z1+Z2);// in A
I2= I_T*Z1/(Z1+Z2);// in A
P1= (abs(I1))^2*R1;// in W
P2= (abs(I2))^2*R2;// in W
disp(P1,"The value of P1 in W is : ")
disp(P2,"The value of P2 in W is : ")
