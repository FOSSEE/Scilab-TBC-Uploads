clc;clear;
//Example 13.3

//given data
m1=14.007515;//mass of 7N14 in a.m.u
m2=4.003837;//mass oh 2He4 in a.m.u
m3=17.004533;//mass of 8O17 in a.m.u
m4=1.008142;//mass of 1H1 in a.m.u
//rxn = 7N14 + 2He14 = 8O17 + 1H1

//calculations
dm=m3+m4-(m1+m2);
Q=dm*931;
disp(Q,'energy released in MeV')