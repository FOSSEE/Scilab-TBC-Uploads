//Chapter-1, Illustration 5, Page 17
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.624;//Percentage composition of Carbon
H=0.042;//Percentage composition of Hydrogen
O=0.045;//Percentage composition of Oxygen
CO2=0.13;//Volumetric composition of CO2
CO=0.003;//Volumetric composition of CO
O2=0.06;//Volumetric composition of Oxygen
N2=0.807;//Volumetric composition of Nitrogen
M1=44;//Molecular mass of CO2
M2=28;//Molecular mass of CO
M3=32;//Molecular mass of O2
M4=28;//Molecular mass of N2
mw=0.378;//Mass of H2O in kg

//CALCULATIONS
m=(11.5*C)+(34.5*(H-(O/8)));//Minimum air required in kg
c1=CO2*M1;//Proportional mass of CO2
c2=CO*M2;//Proportional mass of CO
c3=O2*M3;//Proportional mass of O2
c4=N2*M4;//Proportional mass of N2
c=c1+c2+c3+c4;//Total proportional mass of constituents
m1=c1/c;//Mass of CO2 per kg of flue gas in kg
m2=c2/c;//Mass of CO per kg of flue gas in kg
m3=c3/c;//Mass of O2 per kg of flue gas in kg
m4=c4/c;//Mass of N2 per kg of flue gas in kg
d1=m1*100;//Mass analysis of CO2
d2=m2*100;//Mass analysis of CO
d3=m3*100;//Mass analysis of O2
d4=m4*100;//Mass analysis of N2
mC=((3*m1)/11)+((3*m2)/7);//Mass of carbon in kg
md=C/mC;//Mass of dry flue gas in kg
mact=(md+mw)-(C+H+O);//Actual air supplied per kg of fuel in kg
me=mact-m;//Mass of excess air per kg of fuel in kg

//OUTPUT
mprintf('Minimum air required to burn 1 kg of coal is %3.2f kg \n Mass of air actually supplied per kg of coal is %3.3f kg \n Amount of excess air supplied per kg of coal burnt is %3.3f kg',m,mact,me)





//==============================END OF PROGRAM=================================
