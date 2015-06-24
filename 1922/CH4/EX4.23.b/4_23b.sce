clc
clear
//Initialization of variables
sd=6.7039//kJ/kg/K
sf=1.1453//kJ/kg/K
sg=7.5320//kJ/kg/K
hf=359.86//kJ/kg
hg=2653.5//kJ/kg
hd=3717.9//kJ/kg
//calculations
x=(sd-sg)/(sf-sg)
he=x*hf+(1-x)*hg
etar=(hd-he)/(hd-hf)
//results
printf("Thermal efficiency = %.4f",etar)

