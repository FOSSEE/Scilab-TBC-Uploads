clc;
clear;

printf("\n Example 9.12\n");

lambda=1e-6;//Wavelength
E_l_b=1e9; //Emissive power at given lambda

//From equation 9.108
C2=1.439e-2;
C1=3.742e-16;
T=C2/lambda/log(C1/(E_l_b*lambda^5));
printf("\n The temperature of surface = %d K",T);
//With an error of +2 per cent, the correct value is given by:
E_l_b_n=(100-2)*E_l_b/100;
//In equation 9.108:
T_n=C2/lambda/log(C1/(E_l_b_n*lambda^5));
printf("\n The temperature of surface with +2 per cent error= %.0f K",T_n);