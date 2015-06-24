// Exa 6.25
format('v',7);clc;clear;close;
// Given data
L2 = 47.8;//inductance in mH
R2 = 1.36;//resistance in ohm
r1 = 32.7;//resistance in ohm
R1 = 1.36;//resistance in ohm
//At balance, 100*(r1+J*oemga*L1) = 100*((R2+r2)+(J*omega*L2));
 L1 = L2;// in mH (equating imaginary terms)
disp(L1,"The inductance of coil in mH is");
// R2+r2 = r1 (equating real terms)
r2 = r1-R1;//resistance of coil in ohm
disp(r2,"The resistance of coil in ohm is");

// Note: In the book the value of L1 is wrong.
