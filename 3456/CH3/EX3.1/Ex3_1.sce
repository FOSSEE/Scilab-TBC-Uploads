//Example 3.1
//True Stress and True Strain
//Page No. 76
clc;clear;close;

D_i=0.505;             //in inches
L=2;               //in inches
P_max=20000;         //in lb
P_f=16000;            //in lb
D_f=0.425;            //in inches
E_St= P_max*4/(%pi*D_i^2);
T_fr_St= P_f*4/(%pi*D_f^2);
e_f=log(D_i^2/D_f^2);
e=exp(e_f)-1;
printf('\nEngineering Stress at maximum load = %g psi\nTrue Fracture Stress = %g psi\nTrue Strain at fracture = %g\nEngineering strain at fracture = %g',E_St,T_fr_St,e_f,e);
