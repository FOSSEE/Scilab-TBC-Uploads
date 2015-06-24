//ques11
//Enthalpy of Compressed Liquid
clear
clc
//the water exists as a compressed liquid at the specified state
//(a) using compressed liquid table
P=15000;//pressure in kPa
T=100;//temperature in C
h=430.39;//heat of water in kJ/kg from Table A-7
printf('(a) Heat of water using compressed liquid table = %.2f kJ/kg \n',h);

//(b) Approximating the compressed liquid as a saturated liquid at 100°C
h=419.17;//heat of water at liquid state in kJ/Kg ie hf @ 100C
printf(' (b) Heat of Water by approximating compressed liquid as saturated = %.2f kJ/kg \n',h);

//(c) Using correction method
vf=0.001//specific volume of water in saturated liquid state @100C
Psat=101.42//saturated pressure in kPa from Table 
h=h+vf*(P-Psat)//corrected value of heat of water at given state in kJ/kg
printf(' (c) Heat of water using correction method = %.2f kJ/kg ',h);