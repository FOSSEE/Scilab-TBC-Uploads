//example 3.17

clear;
clc;

//Given:
Cp1=poly([29.07, -0.836*10^-3, 20.1*10^-7],'T','c');//heat capacity for H2(g)
Cp2=poly([25.72, 12.98*10^-3, -38.6*10^-7],'T','c');//heat capacity for O2(g)
Cp3=poly([30.36, 9.61*10^-3, 11.8*10^-7],'T','c');//heat capacity for H2O(g)
Hf1=-241820;//standard heat of formation H2O(g) at 298K :                H2(g)+ 0.5O2(g)->H2O(g) [J/mol]
T1=298;//initial temperature[K]
T2=1273;//final temperature[K]

//to find the standard heat of formation of H2O(g) at 1273K
Cp=Cp3-0.5*Cp2-Cp1;//heat capacity for the formation[J/K/mol]
i=horner(Cp,1273)-horner(Cp,298);//[J/mol]
Hf2=(Hf1-i)*0.001;//[KJ/mol]
printf("The heat of formation of H2O at 1273K = %f KJ/mol", Hf2);



