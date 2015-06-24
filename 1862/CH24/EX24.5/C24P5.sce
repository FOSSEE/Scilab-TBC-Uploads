clear
clc
//to find maximum possible efficiency of turbine

//Given:
//temperature of steam in boiler
TH = 520//in degree celsius
////temperature of steam in condenser
TL = 100//in degree celsius

//Solution:
//applying laws of thermodynamics
//applying formula for carnot cycle
//maximum possible efficiency of turbine
Emax = 1-((TL+273)/(TH+273))
Emax1 = Emax*100//in percent
Emax1 = round(Emax1)

printf ("\n\n Maximum possible efficiency of turbine Emax = \n\n %.2f" ,Emax);
printf ("\n\n Maximum possible efficiency of turbine Emax = \n\n %2i percent" ,Emax1);

