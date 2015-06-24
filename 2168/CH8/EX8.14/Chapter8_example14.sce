clc
clear
//Input data
C=85//Composition by weight in percent
H2=14//Composition by weight in percent
x=50//Percentage of excess air
Ta=[70+273,500+273]//Temperature of air entering and leaving in K
Cp=0.24//Mean specific heat of air in kJ/kg.K
qC=8080//Heat liberated in kcal/kg
qH2=34250//Heat liberated in kcal/kg
a=23//Air contains 23% by weight of O2
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mCO=28//Molecular weight of CO
mN2=28//Molecular weight of N2
mC=12//Molecular weight of carbon
mH2=2//Molecular weight of H2

//Calculations
mm=((100/a)*((C/100)*(mO2/mC)+(H2/100)*(mO2/(2*mH2))))//Minimum air required in kg/kg of fuel
Q1=((C/100)*qC+(H2/100)*qH2)//Heat in kcal/kg fuel
ea=((x/100)*mm)//Excess air supplied in kg/kg fuel
Q2=((mm/2)*Cp*(Ta(2)-Ta(1)))//Heat in kcal/kg fuel

//Output
printf('(a) Minimum quantity of air necessary for the complete combustion of 1 kg of fuel is %3.2f kg/kg of fuel \n (b) Heat released per kg of fuel when the carbon is burnt to CO2 and hydrogen is burnt to H2O is %3.0f kcal/kg fuel \n (c) Heat carried away by the excess air is %3.0f kcal/kg fuel',mm,Q1,Q2)
