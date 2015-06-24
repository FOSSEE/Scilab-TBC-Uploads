//Calculation of Strain-Hardening Exponent

clear;
clc;

printf("\tExample 6.5\n");

sig_t=415;       //True stress in MPa
et=0.1;          //True strain
K=1035;         // In MPa

n=log(sig_t/K)/log(et);

printf("\nStrain - hardening coefficient is %.2f",n);

//End