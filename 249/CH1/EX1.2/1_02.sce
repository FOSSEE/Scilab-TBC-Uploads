clear
clc
 // Assuming density of a person=1000kg/m3
 d=1000;
 mass=75;
 V=mass/d;
 //moles of O2 consumed per day
 O2_used=(6000/2816)*6;
 // Rate of reaction (mol/m3.s)
 r_O2=(O2_used/V)/(24*3600);
 printf("\nRESULT\n")
printf("rate of reaction of O2(mol/m^3.s) is %f\n",r_O2)