clear all; clc;
//This numerical is Ex 2_1S,page 29.
Q1=18.2
N1=1000
N2=1500
delta_p1=10.3
P_s1=6

Q2=Q1*N2/N1
printf("\n The value of Q2 is equal to %g m^3/h",Q2)

delta_p2=delta_p1*((N2/N1)^2)
printf("\n The value of delta_p2 is equal to %0.1f bars",delta_p2)

P_s2=P_s1*(N2/N1)^3
printf("\n The value of P_s2 is equal to %g kW",P_s2)

E1=((Q1/3600)*delta_p1*10^2)/(P_s1)
printf("\n The value of E1=E2 is equal to %g ",E1)
disp("Thus the efficiency is equal to 86.8%")
