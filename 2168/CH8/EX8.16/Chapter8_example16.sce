clc
clear
//Input data
CH4=20//Percentage volumetric analysis
C2H4=2//Percentage volumetric analysis
H2=50//Percentage volumetric analysis
CO=16//Percentage volumetric analysis
CO2=4//Percentage volumetric analysis
O2=1.5//Percentage volumetric analysis
N2=6.5//Percentage volumetric analysis
v=6.8//Volume of air supplied in m^3 per m^3 of coal gas

//Calculations
mmO2=((2*CH4)+(3*C2H4)+(H2/2)+(CO/2))-O2//Minimum moles of O2
mCO2=(CH4+(2*C2H4)+CO+CO2)//Moles of CO2
mH2O=((2*CH4)+(2*C2H4)+H2)//Moles of H2O
mN2=(N2+(79/21)*mmO2)//Moles of N2
ma=((100/21)*(mmO2/100))//Minimum air in m^3/m^3 of gas
ea=(v-ma)//Excess air in m^3/m^3 of gas
tm=(mCO2+mN2+ea)*2//Total moles of dry products per 100 moles of gas
pCO2=(mCO2/tm)*100//Percentage of CO2 by volume in dry flue gases

//Output
printf('Minimum volume of air necessary for the complete combustion of 1 m^3 of coal gas is %3.2f m^3/m^3 of gas \n Percentage volume of CO2 in dry flue gases is %3.2f percent',ma,pCO2)
