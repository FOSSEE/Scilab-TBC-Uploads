clc
clear
printf("Example 12.3 | Page number 417 \n\n");
//Find the stoichiometric air
//Given data
xC3H8 = 0.2 //mole fraction of propane
xC4H10 = 0.8 //mole fraction of butane
//Molar masses of O2,H2,N2 & C respectively
MO2 = 32 //g/mol
MH2 = 2 //g/mol
MN2 = 28 //g/mol
MC = 12 //g/mol

//Solution
//C balance
b = xC3H8*3+xC4H10*4
//H2 balance
d = xC3H8*4 + xC4H10*5
//O2 balance
a = b + d/2
//N2 balance
c = 3.76*a

Stoichiometric_air =  a*(MO2 + 3.76*MN2)/(xC3H8*(MC+MO2)+xC4H10*(MC*4+MH2*5))
printf("Stoichiometric air = %.2f kg/kg cooking gas",Stoichiometric_air)
