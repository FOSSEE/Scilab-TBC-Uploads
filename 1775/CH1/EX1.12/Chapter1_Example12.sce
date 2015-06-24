//Chapter-1, Illustration 12, Page 24
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
H2=0.14;//Percentage composition of H2 by volume
CO2=0.05;//Percentage composition of CO2 by volume
CO=0.22;//Percentage composition of CO by volume
CH4=0.02;//Percentage composition of CH4 by volume
O2=0.02;//Percentage composition of O2 by volume
N2=0.55;//Percentage composition of N2 by volume
e=0.4;//Excess air supplied
//CALCULATIONS
v=(2.38*(H2+CO))+(9.52*CH4)-(4.76*O2);//Volume of air required for complete combustion in (m^3)
ve=v*e;//Volume of excess air supplied in m^3
vtN2=v-(v*0.21);//Volume of N2 in theoretical air in m^3
veN2=ve-(ve*0.21);//Volume of N2 in excess air in m^3
vt=vtN2+veN2;//Total volume of N2 in air supplied in m^3
vCO2=CO+CH4+CO2;//CO2 formed per m^3 of fuel gas
vN2=vt+N2;//N2 formed per m^3 of fuel gas
veO2=ve*0.21;//Volume of excess O2 per m^3 of fuel gas
vT=vCO2+vN2+veO2;//Total volume of dry combustion products
pCO2=(vCO2*100)/vT;//Percentage volume of CO2
pN2=(vN2*100)/vT;//Percentage volume of N2
pO2=(veO2*100)/vT;//Percentage volume of O2

//OUTPUT
mprintf('Volume of air required for complete combustion is %3.3f (m^3) \n Volume of CO2 per m^3 of gas fuel is %3.2f m^3/m^3 of gas fuel \n Volume of N2 per m^3 of gas fuel is %3.3f m^3/m^3 of gas fuel \n Volume of excess O2 per m^3 of gas fuel is %3.2f m^3/m^3 of gas fuel \n Total volume of dry combustion products is %3.3f m^3/m^3 of gas fuel \n Percentage volume of CO2 is %3.1f percent \n Percentage volume of N2 is %3.2f percent \n Percentage volume of O2 is %3.2f percent',v,vCO2,vN2,veO2,vT,pCO2,pN2,pO2)









//==============================END OF PROGRAM=================================
