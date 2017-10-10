// Problem 3.13,Page no.62

clc;clear;
close;

A_s=500 //mm**2
E_s=200000
E_al=80000
A_al=1000


//Calculations

//(P_al*L_al)*(A_al*E_al)**-1+(P_s*L_s)*(A_s*E_s)**-1=1*2**-1 

P=1*1000**-1*((A_s*E_s*A_al*E_al)*(A_s*E_s+A_al*E_al)**-1) //N
P_s=P;//N
P_al=P //N
sigma_t=P_s*A_s**-1 //N/mm**2 //Tensile stress in bolt
sigma_c=P_al*A_al**-1 //N/mm**2 //Compressive stress in Aluminium tube

//result
printf("Tensile stress in bolt is %.2f N/mm^2",sigma_t)
printf("\n Compressive stress in Aluminium tube is %.2f N/mm^2",sigma_c)
