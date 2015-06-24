//computation of solubility of gases in liquid

clear;
clc;

printf("\t Example 12.6\n");

c=6.8*10^-4;//solubility of N2 in water, M
P=1;//pressure, atm
k=c/P;//henry's constant

//for partial pressure of N2=0.78atm
P=0.78;//partial pressure of N2, atm
c=k*P;//solubility of N2, M

printf("\t the solubility of N2 gas in water is : %4.1f*10^-4 M\n",c*10^4);

//End
