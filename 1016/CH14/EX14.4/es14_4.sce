clc;clear;
//Example 14.4

//given data
m1=2.01478;//mass of 1H2 in a.m.u
m2=4.00388;//mass of 2He4 in a.m.u
//rxn 1H2 + 1H2 = 2He4 + Q

//calculations
Q=2*m1-m2;
Q=Q*931;//conversion in MeV
disp(Q,'energy liberated in MeV')