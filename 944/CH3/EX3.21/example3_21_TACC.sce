//example 3.21

clear;
clc;

//Given:
Cp1=poly([26.0, 43.5*10^-3, -148.3*10^-7],'T','c');//heat capacity for CO2(g)[J/K/mol]
Cp2=poly([30.36, 9.61*10^-3, 11.8*10^-7],'T','c');//heat capacity for H2O(g)[J/K/mol]
Cp3=poly([27.30, -5.23*10^-3, -0.04*10^-7],'T','c');//heat capacity for N2(g)[J/K/mol]
H1=-881.25;//heat of combustion of methane at 298K[KJ/mol]:                CH4 + 2O2(g) --> CO2(g) + 2H2O(l)
H2=43.6;//heat of vaporization of water at 298K[KJ/mol]:        H2O(l)-->H2O(g)  
T1=298;//initial temperature [K]


//to find the maximum flame temperature when one mole of methane is burnt completely  in calculated amount of air(N2 to O2 ratio 4),at constant pressure
H=(H1+2*H2);//enthalpy of reaction: CH4 + 2O2(g) --> CO2(g) + 2H2O(g) [KJ]
printf("H(enthalpy of reaction)=%f KJ/mol.\n",H);
printf("H(enthalpy of heating)=%f KJ/mol. \n",-H);
Cp=Cp1+2*Cp2+8*Cp3;//[J/K/mol]
P=poly([0 , 305.12 , 52.28*10^-3 , -41.66*10^-7] , 'T' , 'c');
i=horner(P,298);
c1=-H*1000+i;
P1=poly([-c1 , 305.12 , 52.28*10^-3 , -41.66*10^-7] , 'T' , 'c');
T2=roots(P1)
printf("T2 (maximum flame temperature)= %f K",T2(1));