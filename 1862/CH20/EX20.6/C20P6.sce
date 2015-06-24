clear
clc
//to find momentum of proton 

//Given:
//speed of proton
v = 0.86//times c
//speed of light
c = 3.00e8//in m/s
//mass of proton
m = 1.67e-27//in Kg

//Solution:
//appiying fomule for relativistic momentum
//momentum of proton 
P = (m*v*c)/(sqrt(1-(v^2)))//in Kg.m/s
//value of pc
Pc = P*c*(6.24e12)//in MeV //(6.24e12) is conversion factor between J and MeV

printf ("\n\n Momentum of proton P = \n\n %.2e Kg.m/s" ,P);
printf ("\n\n Value of pc = \n\n %4i MeV" ,Pc);
printf ("\n\n Momentum of proton p = \n\n %4i MeV/c" ,Pc);
