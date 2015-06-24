//chapter 7
//Example 7.9
//Page 190
//impedacedetermination
clear;clc;
//Given Impedances
Z10 = %i*1.2;
Z21 = %i*0.2;
Z23 = %i*0.15;
Z13 = %i*0.3;
Z30 = %i*1.5;
//Solution
Z_eq = (Z13 * (Z21+Z23) / (Z13+Z21+Z23));
Z11 = Z10 * (Z30 + Z_eq) / (Z10 + Z30 + Z_eq);
disp('Z11 is given by')
disp(Z11)