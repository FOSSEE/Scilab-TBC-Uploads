clc();
clear;
//Given :
tau_c = 10^-5; // lifetime of lasing energy in s
tau_c1 = 10^-8; // coherence time in s
lambda = 5000; // wavelength in A
c = 3*10^8;// light speed in m/s
// Ratio = delta_lambda/lambda   = lambda/(c*tau_c)
// 1 A = 1.0*10^-10 m
//(a)Laser source
Ratio = (lambda*10^-10)/(c*tau_c);
//(b)Ordinary source
Ratio1 = (lambda*10^-10)/(c*tau_c1);
printf("Laser source = %.2f x 10^-10 \n",Ratio*10^10);
printf("Ordinary  source = %.2f x 10^-7 \n",Ratio1*10^7);
//Results obtained differ from those in textbook, beacuse only order of 10 was considered in the result.
