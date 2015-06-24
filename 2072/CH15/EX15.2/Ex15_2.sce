//Example 15.2
clc

k_e=8.99*10^9 //N.m^2/c^2
q2=2*10^-9// in c
q3=5*10^-9// in c
r1=4//in m
F_23=(q2*q3*k_e)/(r1*r1)
disp(F_23,"The force in N= ")
q1=6*10^-9
r2=5//in m
F_13=(q1*q3*k_e)/(r2*r2)
disp(F_13,"The force in N= ")
