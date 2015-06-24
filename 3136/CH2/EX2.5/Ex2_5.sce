clear all; clc;
//This numerical is Ex 2_1E,page 29.
Q1=80
N1=1000
N2=1500
delta_p1=150
P_s1=8

disp("From phi_2=phi_1 we have Q2/(D^3*N2)=Q1/(D^3*N1)")
Q2=Q1*N2/N1
printf(" The value of Q2 is equal to %g gpm \n",Q2)

disp("From psi_1=psi_2 we have delta p 2/(rho*D^2*N2^2)=delta p 1/(rho*D^2*N1^2)")
delta_p2=delta_p1*((N2/N1)^2)
printf(" The value of delta_p2 is equal to %g psig \n",delta_p2)

disp("From pi_2=pi_1 we have P_s2=P_s1*((N2/N1)^3)")
P_s2=P_s1*(N2/N1)^3
printf(" The value of P_s2 is equal to %g hp \n",P_s2)

disp("The efficiencies are same at the corresponding points,so E1=E2")
E1=Q1*delta_p1*0.00223*144/(550*P_s1)
printf(" The value of E1=E2 is equal to %g \n",E1)
disp("Thus the efficiency is equal to 87.57%")
