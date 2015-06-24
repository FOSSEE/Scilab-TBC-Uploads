clc();
clear;
//Given :
n1 = 1.5025;// refractive index of core
delta = 0.0033; // 
a = 50; // core radius in mu_m
Ls = a*sqrt(2/delta);// skip distance in mu_m
// 1 mu_m = 1.0*10^-6 m
R = 1/(Ls*10^-6);// reflections per m
printf("Ls = %.1f mu_m \n",Ls);
printf("Reflections per m = %d",R);
