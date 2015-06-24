// Scilab code Ex17.6 : Pg:891 (2011)
clc;clear;
nucleus = cell(4,3);
nucleus(1,1).entries = 'Si';
nucleus(1,2).entries = 14;
nucleus(1,3).entries = 29;
nucleus(2,1).entries = 'H';
nucleus(2,2).entries = 1;
nucleus(2,3).entries = 2;
nucleus(3,1).entries = 'P';
nucleus(3,2).entries = 15;
nucleus(3,3).entries = 30;
nucleus(4,1).entries = 'n';
nucleus(4,2).entries = 0;
nucleus(4,3).entries = 1;
Q = 2*23.834-44.359;    // Q-value of the reaction, MeV
printf("\nThe reaction");
printf("\n%s(%d,%d) + %s(%d,%d) --> %s(%d,%d) + %s(%d,%d)", nucleus(1,1).entries, nucleus(1,2).entries, nucleus(1,3).entries, nucleus(2,1).entries, nucleus(2,2).entries, nucleus(2,3).entries, nucleus(3,1).entries, nucleus(3,2).entries, nucleus(3,3).entries, nucleus(4,1).entries, nucleus(4,2).entries, nucleus(4,3).entries);
printf("\nhas the Q-value : %5.3f MeV", Q);

// Result
// The reaction
// Si(14,29) + H(1,2) --> P(15,30) + n(0,1)
// has the Q-value : 3.309 MeV 
