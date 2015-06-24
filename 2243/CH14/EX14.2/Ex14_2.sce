clc();
clear;
//Given :
lambda = 6000; //wavelength in A
E2_E1 = 12422/lambda; // energy in eV
k = 8.62*10^-5; // in eV/K
T = 300; // Temperature in K
//Equilibrium ratio = N2/N1 =  exp[-(E2-E1)/k*T]
//(a)
Ratio = exp(-E2_E1/(k*T));
//(b)
T1 = (E2_E1)/(k*log(2)); // Temperature in K
printf("Ratio =  %.2f x 10^-35 \n",Ratio*10^35);
printf("T = %d K",T1);
//Resuts obtained differ from those in texbook, because approximate value of k*T was considered
