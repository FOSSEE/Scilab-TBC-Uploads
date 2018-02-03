// Exa 7.12

clc;
clear;

// Given

// A variable inductive transducer
L1 = 2.5; // inductance in mH
N1 = 50; // No of effective turns at L1
N2 = 52; // No of effective turns at L2

// Solution

printf(' Since L directly proportional to N^2 \n');
printf('  L1/N1^2 = L2/N2^2 \n ');
printf(' Therefore, L2 i.e, \n ');

L2 = L1* (N2/N1)^2;
printf(' The inductance of coil when the effective turns of the coil are 52 = %.2f mH \n',L2);
