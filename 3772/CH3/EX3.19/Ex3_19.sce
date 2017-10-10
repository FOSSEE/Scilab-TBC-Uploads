// Problem 3.19,Page no.67

clc;clear;
close;

L=100 //m //Length of rod
A=2 //cm**2 //cross sectional area
rho=80 //KN/m**3

//Calculatiom
W=A*10**-4*L*rho //KN

sigma_s=10+1.6 //KN //Rod experiencing max tensile stress when it is at top performing upstroke
sigma_s_2=sigma_s*10**3*200**-1 //N/mm**2 //corresponding stress at this moment

sigma_c=1 //KN ////Rod experiencing max compressive stress at its lower end,free from its own weight
sigma_c_2=sigma_c*10**3*200**-1 //corresponding stress at this moment

//Result
printf("Tensile stress in bar = %.2f N/mm^2",sigma_s_2)
printf("\n Compressive stress in bar = %.2f N/mm^2",sigma_c_2)
