clc
clear
//Input data
//C + O2 -> CO2
// 12 + 32 -> 44
C=12//Molecular weight of carbon
O2=32//Molecular weight of O2
CO2=44//Molecular weight of CO2
N2=28//Molecular weight of N2

//Calculations
wair=(O2/C)*(100/23)//Air required per kg of C in kg
wN2=(O2/C)*(77/23)//N2 associated with the air in kg
pCO2=(CO2/C)/CO2//Parts by volume/k for CO2
pN2=(wN2/N2)//Parts by volume/k for N2
Tv=(pCO2+pN2)//Total parts by volume
ppCO2=(pCO2/Tv)*100//Percentage volume of CO2
ppN2=(pN2/Tv)*100//Percentage volume of N2

//Output
printf('The volumetric analysis of the flue gas when pure carbon is burnt with a minimum quantity of air is given by \n CO2 -> %3.1f percent \n N2 -> %3.1f percent',ppCO2,ppN2)
