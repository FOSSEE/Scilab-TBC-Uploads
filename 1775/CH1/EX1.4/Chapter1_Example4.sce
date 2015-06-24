//Chapter-1, Illustration 4, Page 17
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.84;//Percentage composition of Carbon
H=0.09;//Percentage composition of Hydrogen
CO2=0.0875;//Volumetric composition of CO2
CO=0.0225;//Volumetric composition of CO
O2=0.08;//Volumetric composition of Oxygen
N2=0.81;//Volumetric composition of Nitrogen
M1=44;//Molecular mass of CO2
M2=28;//Molecular mass of CO
M3=32;//Molecular mass of O2
M4=28;//Molecular mass of N2

//CALCULATIONS
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
m=((3*m1)/11)+((3*m2)/7);//Mass of carbon in kg
md=C/m;//Mass of dry flue gas in kg

//OUTPUT
mprintf('Mass of dry flue gases per kg of coal burnt is %3.1f kg',md)





//==============================END OF PROGRAM=================================
