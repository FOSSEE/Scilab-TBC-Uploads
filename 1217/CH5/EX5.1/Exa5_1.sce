// Exa 5.1
clc;
clear;
close;
// given data 
fo=1;//in KHz
disp("As choosing R2=1.16R1 will give f=1/2RC")
// assume R1=1 Kohm and C=1 uF
R1=1;//in Kohm
C=1;//in uF
R2=1.16*R1;//in Kohm
R=1/(2*fo*10^3*C*10^-6)
disp(R1,"Value of R1 in Kohm is ; ")
disp(R2,"Value of R2 in Kohm is ; ")
disp(R,"Value of R in ohm is ; ")
disp(C,"Value of C in uF is ; ")