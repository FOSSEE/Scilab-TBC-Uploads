//example 1
//Balancing the Combustion Equation
clear
clc
Mair=28.97 //Molar mass of air in kg/kmol
x=8 //no. of moles of CO2 in products
y=9 //no. of moles of H2O in products
z=7.5 //no. of moles of O2 in products
w=75.2 // no. of moles of N2 in products
NMair=20*4.76*29 //mass of air in kg
NMc=8*12 //mass of carbon in fuel in kg
NMh2=2*9 //mass of hydrogen in fuel in kg
AF=NMair/(NMc+NMh2) //air fuel ratio in kg air/kg fuel
printf("\n Hence, the air fuel ratio for this combustion process is = %.1f kg air/kg fuel. \n",AF);