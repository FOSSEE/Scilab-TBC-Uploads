clc;clear;
//Example 13.3

//given data
m1=14.007520;//mass of 7N14 in a.m.u
m2=1.008986;//mass oh 0n1 in a.m.u
//m3=mass of 6C14 in a.m.u
m4=1.008145;//mass of 1H1 in a.m.u
//rxn = 7N14 + 0n1 = 6C14 + 1H1 + 0.55 MeV

//calculations
Q=0.55;
dm=Q/931;
m3=dm+m1+m2-m4;
disp(m3,'mass of 6C14 in a.m.u')