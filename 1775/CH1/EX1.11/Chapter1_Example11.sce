//Chapter-1, Illustration 11, Page 24
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
H2=0.5;//Percentage composition of H2 by volume
CO2=0.1;//Percentage composition of CO2 by volume
CO=0.05;//Percentage composition of CO by volume
CH4=0.25;//Percentage composition of CH4 by volume
N2=0.1;//Percentage composition of N2 by volume
pCO2=8;//Percentage volumetric analysis of CO2
pO2=6;//Percentage volumetric analysis of O2
pN2=86;//Percentage volumetric analysis of N2


//CALCULATIONS
v=(2.38*(H2+CO))+(9.52*CH4);//Volume of air required for complete combustion in (m^3)
vN2=v*0.79;//Volume of nitrogen in the air in m^3
a=CO+CH4+CO2;//CO2 formed per m^3 of fuel gas burnt
b=vN2+N2;//N2 formed per m^3 of fuel gas burnt
vt=a+b;//Total volume of dry flue gas formed in m^3
ve=(pO2*vt)/(21-pO2);//Excess air supplied in m^3
V=v+ve;//Total quantity of air supplied in m^3

//OUTPUT
mprintf('Air-fuel ratio by volume is %3.3f:1',V)




//==============================END OF PROGRAM=================================
