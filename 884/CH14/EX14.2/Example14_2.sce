//computation of equilibrium constant

clear;
clc;

printf("\t Example 14.2\n");

NO=0.0542;//equilibrium conc of NO, M
O2=0.127;//equilibrium conc of O2, M
NO2=15.5;//equilibrium conc of NO2, M

Kc=NO2^2/(O2*NO^2);//equilibrium constant for given reaction

printf("\t the value of the equilibrium constant of the reaction is : %4.2f *10^5\n",Kc*10^-5);

//End
