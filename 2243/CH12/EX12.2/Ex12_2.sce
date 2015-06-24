clc();
clear;
//Given :
//(a)Forward bias of 0.1 V
// np = np0*exp[eV/kT] , here we dont have np0 value, so we will calculate the remaining part.
kT = 0.026; // in eV
np = exp(0.1/kT); 
printf("(a) np = %.0f x np0 \n",np);
//(b)Reverse bias of 1 V
// np = np0*exp[-eV/kT] , here we dont have np0 value, so we will calculate the remaining part.
np1 = exp(-1/kT);
printf("(b) np = %.2f x 10^-17 x np0 \n",np1*10^17);
