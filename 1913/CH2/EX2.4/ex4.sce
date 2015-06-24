clc
clear
//Input data
h1=35;//Enthalpy of water entering the boiler in kJ/kg
h2=705;//Enthalpy of steam leaving the boiler in kJ/kg
C=0;//Change in kinetic energy is neglected
Z=0;//Change in potential energy is neglected

//Calculations
q=h2-h1;//The heat transfer per kg of steam in kJ/kg

//Output
printf('The heat transfer per kg of steam q = %3.0f kJ/kg ',q)
