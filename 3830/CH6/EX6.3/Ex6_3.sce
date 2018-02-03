// Exa 6.3

clc;
clear;

// Given

//Fig 6.41 shows an AC bridge
R1 = 800; // Ohms
C1 = 0.4; // microFarad
R2 = 500; // Ohms
C2 = 1.0; // microFarad
R3 = 1200; // Ohms


// Solution

// Z = R + j X;
// Z1 = 800 + j/(w*C1)
// Y2 = 1/R2 - j*(w*C2)
//Z3 = 1200

printf('At balance, Z1/Z4 = Z2/Z3 \n');

printf(' Rearranging the equation, Z4 = Z1*Z3*Y2 \n') ;
printf(' Equating the real and imaginary parts on both sides, \n');
Z4 = R1*R3*1/R2;
w = sqrt(C1*C2);
printf(' The value of R in arm DA to produce a balance = %d ohms \n',Z4);
printf(' The value of frequency at balance = %.4f Hz \n',w/(2*%pi));

// The answers given in textbook for R and f are incorrect
