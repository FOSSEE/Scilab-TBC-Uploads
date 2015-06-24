clc
clear
printf("Example 4.4 | Page number 103 \n\n");
//find Cv and Cp
//Given data
t = poly(0,'t'); //°C //Temperature in °C
u = 196 + .718*t; //KJ/kg //specific internal energy
pv = 287*(t+273); //Nm/kg //p is pressure and v = specific volume

//Solution
Cv = coeff(derivat(u));
printf("Specific heat at constant volume,Cv = %.3f kJ/kgK\n",Cv(1)); 

h = u + pv*.001 //KJ/kg //enthalpy
Cp = coeff(derivat(h));
printf("Specific heat at constant pressure,Cp = %.3f kJ/kgK",Cp(1)); 
