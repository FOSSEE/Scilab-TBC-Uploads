//example 10
//Diffusion of Hydrogen Gas into a Nickel Plate
clear
clc
s=0.00901 //solubility of hydrogen in nickel in kmol/m3-bar
PH2gas=3//Pressure of hydrogen in tank in bar
PH2solid=s*PH2gas //molar density of hydrogen in nickel plate in kmol/m^3
MH2=2 //molar mass of hydrogen kg/kmol
dH2solid=PH2solid*MH2 //mass density of hydrogen
printf("\n Hence, the molar density of hydrogen in Nickel plate when phase equilbrium is established is = %.3f kmol/m^3. \n",PH2solid);
printf("\n and mass density is = %.3f kg/m^3. \n",dH2solid);