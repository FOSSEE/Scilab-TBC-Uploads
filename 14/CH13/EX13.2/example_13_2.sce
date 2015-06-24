//Chapter 13
//Page 355
//Example 13.2
//MaxMinI
clear;clc;
//Given
V = 13.8e3;
Z_tr = %i * 5;
Z_tr_eq = Z_tr / 2;//since two reactances of equal value are in parallel
Z1 = %i*9.6;Z2 = %i*6.4;Z3 = %i*8.0;Z4 = %i*12.8;
m = sqrt(3) / 2;//to obtain line-to-line fault from a three-phase fault current
//At bus 5
//Max. Current
If_b5_max = (V/sqrt(3)) / (Z_tr_eq + Z1 + Z2 + Z3 + Z4);
disp(If_b5_max,'Maximum fault current at bus 5 in A')
//Min. Current
If_b5_min = (V/sqrt(3)) * m / (Z_tr + Z1 + Z2 + Z3 + Z4);
disp(If_b5_min,'Minimum fault current at bus 5 in A')
//At bus 4
//Max. Current
If_b4_max = (V/sqrt(3)) / (Z_tr_eq + Z1 + Z2 + Z3);
disp(If_b4_max,'Maximum fault current at bus 4 in A')
//Min. Current
If_b4_min = (V/sqrt(3)) * m / (Z_tr + Z1 + Z2 + Z3);
disp(If_b4_min,'Minimum fault current at bus 4 in A')
//At bus 3
//Max. Current
If_b3_max = (V/sqrt(3)) / (Z_tr_eq + Z1 + Z2);
disp(If_b3_max,'Maximum fault current at bus 3 in A')
//Min. Current
If_b3_min = (V/sqrt(3)) * m / (Z_tr + Z1 + Z2);
disp(If_b3_min,'Minimum fault current at bus 3 in A')
//At bus 2
//Max. Current
If_b2_max = (V/sqrt(3)) / (Z_tr_eq + Z1);
disp(If_b2_max,'Maximum fault current at bus 2 in A')
//Min. Current
If_b2_min = (V/sqrt(3)) * m / (Z_tr + Z1);
disp(If_b2_min,'Minimum fault current at bus 2 in A')
//At bus 2
//Max. Current
If_b1_max = (V/sqrt(3)) / (Z_tr_eq);
disp(If_b1_max,'Maximum fault current at bus 1 in A')
//Min. Current
If_b1_min = (V/sqrt(3)) * m / (Z_tr);
disp(If_b1_min,'Minimum fault current at bus 1 in A')