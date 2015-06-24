//example 3.16


clear;
clc;

//Given:
Hf1=-46.11;//standard heat of formation of NH3 at 298K //reaction:0.5N2(g)+1.5H2(g)->NH3(g) [KJ/mol]
Cp1=29.125;//molar heat capacity at constant pressure for N2(g)[J/K/mol]
Cp2=28.824;//molar heat capacity at constant pressure for H2(g)[J/K/mol]
Cp3=35.06;//molar heat capacity at constant pressure for NH3(g)[J/K/mol]
T1=298;//initial temperature[K]
T2=400;//final temperature[K]


//to find the standard heat of formation of NH3 at 400K for same reaction
Cp=Cp3-0.5*Cp1-1.5*Cp2;//[J/K/mol]
T=T2-T1;//[K]
Hf2=Hf1+Cp*0.001*T;//standard heat of formation for NH3 at 400K[KJ/mol]
printf("\n Hf2(standard heat of formation for NH3 at 400K = %f KJ/mol. \n",Hf2);