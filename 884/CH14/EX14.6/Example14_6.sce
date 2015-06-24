//computation of Kp and Kc

clear;
clc;

printf("\t Example 14.6\n");


//(a)
CO2=0.236;//pressure of CO2 gas, atm
Kp=CO2;

//(b)
T=273+800;
delta_n=1;
Kc=Kp*(0.0821*T)^-delta_n;

printf("\t(a) the value of Kp of the reaction is : %4.3f\n",Kp);
printf("\t(b) the value of Kc of the reaction is : %4.2f *10^-3\n",Kc*1000);

//End
