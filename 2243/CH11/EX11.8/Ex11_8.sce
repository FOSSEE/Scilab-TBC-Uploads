clc();
clear;
//Given :
Eg1= 0.72; //Energy gap for Germanium in eV
Eg2= 1.10; //Energy gap for Silicon in eV
Eg3= 5.6; //Energy gap for diamond in eV
//Fraction of electron : n/N = exp(-Eg/(2*k*T)) , k*T = 0.026 eV
F1 = exp(-Eg1/(2*0.026)); // For Germanium
F2 = exp(-Eg2/(2*0.026)); // For Silicon
F3 = exp(-Eg3/(2*0.026)); // For diamond
printf("For Germanium , n/N = %.1f x 10^-7\n",F1*10^7);
printf("For Silicon , n/N = %.1f x 10^-10\n",F2*10^10);
printf("For diamond, n/N = %.1f x 10^-47",F3*10^47);
