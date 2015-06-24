clc
clear
//Input data
CO2=10//Volumetric analysis composition in percent
N2=80//Volumetric analysis composition in percent
C=80//Carbon content of the fuel in percent
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mN2=28//Molecular weight of N2
mC=12//Molecular weight of carbon

//Calculations
O2=100-(N2+CO2)//Volumetric analysis composition in percent
pCO2=(CO2/100)*mCO2//Proportional weight for CO2
pO2=(O2/100)*mO2//Proportional weight for O2
pN2=(N2/100)*mN2//Proportional weight for N2
T=(pCO2+pO2+pN2)//Total proportional weight
ppCO2=(pCO2/T)//Weight per kg of exhaust gas for CO2
ppO2=(pO2/T)//Weight per kg of exhaust gas for O2
ppN2=(pN2/T)//Weight per kg of exhaust gas for N2
wC=(ppCO2*(mC/mCO2))//Weight of carbon per kg of exhaust gases in kg
WC=((C/100)/wC)//Weight of exhaust gases per kg of fuel burned in kg
wa=(WC-(ppCO2+ppO2+ppN2))//Weight of air supplied per kg fuel in kg

//Output
printf('Weight of air supplied per kg of fuel is %i kg',wa)
