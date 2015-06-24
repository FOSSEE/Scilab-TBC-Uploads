//computation of Kp from Kc

clear;
clc;

printf("\t Example 14.4\n");

Kc=10.5;
delta_n=1-3;
T=273+220;

Kp=Kc*(0.0821*T)^delta_n;

printf("\t the value of the equilibrium constant of the reaction is : %4.2f *10^-3\n",Kp*1000);

//End
