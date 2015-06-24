clc
clear
//Input data
CO2=12//Volumetric analysis composition in percent
CO=4//Volumetric analysis composition in percent
N2=84//Volumetric analysis composition in percent
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mCO=28//Molecular weight of CO
mN2=28//Molecular weight of N2
mC=12//Molecular weight of carbon
mH2=2//Molecular weight of H2

//Calculations
pCO2=(CO2/100)*mCO2//Proportional weight for CO2
pCO=(CO/100)*mCO//Proportional weight for CO
pN2=(N2/100)*mN2//Proportional weight for N2
T=(pCO2+pCO+pN2)//Total proportional weight
ppCO2=(pCO2/T)//Weight per kg of exhaust gas for CO2
ppCO=(pCO/T)//Weight per kg of exhaust gas for CO
ppN2=(pN2/T)//Weight per kg of exhaust gas for N2
wC=((ppCO2*(mC/mCO2))+(ppCO*(mC/mCO)))//Weight of carbon per kg of flue gases
pC=((6*mC)/(6*mC+7*mH2))//Percentage by weight of carbon in C6H14
we=(pC/wC)//Weight of exhaust gases per kg of fuel in kg
wa=(we-(ppCO2+ppCO+ppN2))//Weight of air supplied per kg of fuel in kg
tw=((100/23)*(((mO2/mC)*pC)+((mO2/(2*mH2))*0.163)))//Theoretical amount of air required for complete combustion of C6H14 in kg
exc=(wa-tw)//Excess air supplied per kg of fuel in kg

//Output
printf('Excess air supplied per kg of fuel is %3.1f kg(deficient)',exc)
