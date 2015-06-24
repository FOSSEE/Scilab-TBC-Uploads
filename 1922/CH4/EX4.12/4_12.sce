clc
clear
//Initialization of variables
P=2 //Mpa
T1=212.4+273.1 //K
T2=25+273.1 //K
h1=2799.5
h2=104.89
s1=6.3409
s2=0.3674
//calculations
dh=h1-h2
ds=s1-s2
exergy=dh-T2*ds
//results
printf("exergy = %.1f kJ/kg",exergy)
