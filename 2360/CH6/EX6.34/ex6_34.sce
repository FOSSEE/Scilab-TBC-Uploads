// Exa 6.34
format('v',7);clc;clear;close;
// Given data
R2 = 1000;//resistance in Ω
R3 = 1000;//resistance in Ω
R4 = 1000;//resistance in Ω
C4 = 0.5;//capacitance in µF
C4 = C4 * 10^-6;// in F
//At balance, (R1+(%i*omega*L1))*(R4/( 1+(%i*omega*C4*R4) )) = R2*R3;
// R1*R4 + (%i*omega*L1*R4) = (R2*R3) + (%i*omega*R2*R4*C4);
R1 = (R2*R3)/R4;// in Ω (equating real terms)
L1 = R2*R3*C4;// in H (equating imaginary terms)
disp(R1,"The value of R1 in ohm is");
disp(L1,"The value of L1 in H is");






