//Chapter-1, Illustration 8, Page 21
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.88;//Percentage composition of Carbon
H=0.036;//Percentage composition of Hydrogen
O=0.048;//Percentage composition of oxygen
CO2=0.109;//Volumetric composition of CO2
CO=0.01;//Volumetric composition of CO
O2=0.071;//Volumetric composition of Oxygen
N2=0.81;//Volumetric composition of Nitrogen
M1=44;//Molecular mass of CO2
M2=28;//Molecular mass of CO
M3=32;//Molecular mass of O2
M4=28;//Molecular mass of N2

//CALCULATIONS
m=(11.5*C)+(34.5*(H-(O/8)));//Theoretical air required in kg
c1=CO2*M1;//Proportional mass of CO2
c2=CO*M2;//Proportional mass of CO
c3=O2*M3;//Proportional mass of O2
c4=N2*M4;//Proportional mass of N2
c=c1+c2+c3+c4;//Total proportional mass of constituents
m1=c1/c;//Mass of CO2 per kg of flue gas in kg
m2=c2/c;//Mass of CO per kg of flue gas in kg
m3=c3/c;//Mass of O2 per kg of flue gas in kg
m4=c4/c;//Mass of N2 per kg of flue gas in kg
mC=((3*m1)/11)+((3*m2)/7);//Mass of carbon in kg
md=C/mC;//Mass of dry flue gas in kg
hc=H*9;//Hydrogen combustion in kg of H2O
mair=(md+hc)-(C+H+O);//Mass of air supplied per kg of coal in kg
me=mair-m;//Excess air per kg of coal in kg
mN2=m4*md;//Mass of nitrogen per kg of coal in kg
mact=mN2/0.768;//Actual mass of air per kg of coal in kg
pe=(me/m)*100;//Perccentage excess air in percent

//OUTPUT
mprintf('Mass of air actually supplied per kg of coal is %3.2f kg \n Percentage of excess air is %3.2f percent',mact,pe)







//==============================END OF PROGRAM=================================
