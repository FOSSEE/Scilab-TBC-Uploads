clc
clear
//Input data
CO2=15//Volumetric analysis composition in percent
CO=2.2//Volumetric analysis composition in percent
O2=1.6//Volumetric analysis composition in percent
N2=81.2//Volumetric analysis composition in percent
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mCO=28//Molecular weight of CO2
mN2=28//Molecular weight of N2

//Calculations
pCO2=(CO2/100)*mCO2//Proportional weight for CO2
pCO=(CO/100)*mCO//Proportional weight for CO
pO2=(O2/100)*mO2//Proportional weight for O2
pN2=(N2/100)*mN2//Proportional weight for N2
T=(pCO2+pCO+pO2+pN2)//Total proportional weight
ppCO2=(pCO2/T)*100//Weight per kg of exhaust gas for CO2
ppCO=(pCO/T)*100//Weight per kg of exhaust gas for CO
ppO2=(pO2/T)*100//Weight per kg of exhaust gas for O2
ppN2=(pN2/T)*100//Weight per kg of exhaust gas for N2

printf('The analysis by weight is given by (in percent) \n CO2 -> %3.1f \n CO -> %3.1f \n O2 -> %3.1f \n N2 -> %3.1f',ppCO2,ppCO,ppO2,ppN2)
