//Chapter-1, Illustration 9, Page 22
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.84;//Percentage composition of Carbon
H=0.14;//Percentage composition of Hydrogen
O=0.02;//Percentage composition of oxygen
CO2=8.85;//Volumetric composition of CO2
CO=1.2;//Volumetric composition of CO
O2=6.8;//Volumetric composition of Oxygen
N2=83.15;//Volumetric composition of Nitrogen
M1=44;//Molecular mass of CO2
M2=28;//Molecular mass of CO
M3=32;//Molecular mass of O2
M4=28;//Molecular mass of N2
a=8/3;//O2 required per kg C
b=8;//O2 required per kg H2
mair=0.23;//Mass of air

//CALCULATIONS
c=C*a;//O2 required per kg of fuel for C
d=H*b;//O2 required per kg of fuel for H2
tO2=c+d+O;//Theoreticcal O2 required in kg/kg of fuel
tm=tO2/mair;//Theoretical mass of air in kg/kg of fuel
c1=CO2*M1;//Proportional mass of CO2 by Volume
c2=CO*M2;//Proportional mass of CO by Volume
c3=O2*M3;//Proportional mass of O2 by Volume
c4=N2*M4;//Proportional mass of N2 by Volume
c=c1+c2+c3+c4;//Total proportional mass of constituents
m1=c1/c;//Mass of CO2 per kg of flue gas in kg
m2=c2/c;//Mass of CO per kg of flue gas in kg
m3=c3/c;//Mass of O2 per kg of flue gas in kg
m4=c4/c;//Mass of N2 per kg of flue gas in kg
mC=((m1*12)/M1)+((m2*12)/M2);//Mass of carbon per kg of dry flue gas in kg
md=C/mC;//Mass of dry flue per kg of fuel in kg
p=(4*m2)/7;//Oxygen required to burn CO in kg
meO2=md*(m3-p);//Mass of excess O2 per kg of fuel in kg
me=meO2/mair;//Mass of excess air in kg/kg fuel
mt=tm+me;//Total air required per kg fuel

//OUTPUT
mprintf('Mass of excess air supplied per kg of fuel burnt is %3.1f kg/kg of fuel \n Air-fuel ratio is %3.1f:1',me,mt)





//==============================END OF PROGRAM=================================

