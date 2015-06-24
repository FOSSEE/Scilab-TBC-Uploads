// Exa 5.29
clc;
clear;
close;
// Given data

// Part (b)
Af= 10;
A= 10^4;
// Af= A/(1+A*Bita);
Bita= 1/Af-1/A;
// Bita= R1/(R1+R2)
R2_by_R1= 1/Bita-1;
disp(R2_by_R1,"Value of R2/R1 is : ")

// Part (c)
Vs= 1;// in V
Vo= (1+R2_by_R1)*Vs;
disp(Vo,"Value of Vo in volt is : ")
Vf= Vo/(1+R2_by_R1)
disp(Vf,"Value of Vf in volt is : ")
