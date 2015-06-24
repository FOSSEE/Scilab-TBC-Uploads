//example 8
//calculating change in enthalpy
clear
clc
h1=273.2 //specific heat enthalpy for oxygen at 300 K
h2=1540.2 //specific heat enthalpy for oxygen at 1500 K
T1=300 //initial temperature in K
T2=1500 //final temparature in K
x=poly([0],'x');
Cp=0.88-0.00001*x+0.54*x^2-0.33*x^3 //expression for constant pressure specific heat enthalpy for oxygen
dh1=h2-h1 //this change in specific heat enthalpy is calculated using ideal gas tables 
dh2=1000*integrate('0.88-0.00001*x+0.54*x^2-0.33*x^3','x',T1/1000,T2/1000) //using empirical equation
dh3=0.922*(T2-T1) //it is claculated if we assume specific heat enthalpy to be constant and uses its value at 300K
dh4=1.0767*(T2-T1) //it is claculated if we assume specific heat enthalpy to be constant and uses its value at 900K i.e mean of initial and final temperature
printf("\n Hence,change in specific heat enthalpy if ideal gas tables are used is dh1=%.1f kJ/kg. \n", dh1)
printf("\n if empirical equations are used, dh2=%.1f kJ/kg. \n", dh2)
printf("\n if specific heat is assumed to be constant and using its value at T1, dh3=%.1f kJ/kg. \n", dh3)
printf("\n if specific heat is assumed to be constant at its value at (T1+T2)/2, dh4=%.1f kJ/kg. \n", dh4)