clc;clear;
//Example 13.2

//given data
m1=6.015126;//mass of 3Li7 in a.m.u
m2=4.002604;//mass oh 2He4 in a.m.u
m3=1.00865;//mass of 0n1 in a.m.u
m4=3.016049;//mass of 1H3 in a.m.u
//rxn = 3Li7 + 0n1 = 2He4 + 1H3 + Q

//calcualtions
dm=m1+m3-(m2+m4);
Q=dm*931;
disp(Q,'energy released in MeV')