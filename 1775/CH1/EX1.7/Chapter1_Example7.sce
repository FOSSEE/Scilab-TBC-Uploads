//Chapter-1, Illustration 7, Page 20
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.9;//Percentage composition of Carbon
H=0.033;//Percentage composition of Hydrogen
O=0.03;//Percentage composition of Oxygen
N=0.008;//Percentage composition of Nitrogen
S=0.009;//Percentage composition of Sulphur
M1=44;//Molecular mass of CO2
M2=64;//Molecular mass of SO2
M3=32;//Molecular mass of O2
M4=28;//Molecular mass of N2

//CALCULATIONS
m=(11.5*C)+(34.5*(H-(O/8)))+(4.3*S);//Minimum mass of air per kg of coal in kg
mCO2=(11*C)/3;//Mass of CO2 produced per kg of coal in kg
mHw=9*H;//Mass of H2O produced per kg of coal in kg
mSO2=2*S;//Mass of SO2 produced per kg of coal in kg
mt=11.5*1.5;//Total mass of air supplied per kg of coal in kg
me=mt-m;//Excess air supplied in kg
mO2=0.232*me;//Mass of excess O2 produced per kg of coal in kg
mN2=0.768*mt;//Mass of N2 produced per kg of coal in kg
mtN2=mN2+N;//Total mass of Nitrogen in exhaust in kg
md=mCO2+mSO2+mO2+mtN2;//Total mass of dry flue gases per kg of fuel in kg
CO2=(mCO2/md)*100;//Percentage composition of CO2 by mass in percent
SO2=(mSO2/md)*100;//Percentage composition of SO2 by mass in percent
O2=(mO2/md)*100;//Percentage composition of O2 by mass in percent
N2=(mN2/md)*100;//Percentage composition of N2 by mass in percent
c1=CO2/M1;//Proportional volume of CO2
c2=SO2/M2;//Proportional volume of SO2
c3=O2/M3;//Proportional volume of O2
c4=N2/M4;//Proportional volume of N2
c=c1+c2+c3+c4;//Total proportional volume of constituents
m1=c1/c;//Volume of CO2 in 1 (m^3) of flue gas
m2=c2/c;//Volume of SO2 in 1 (m^3) of flue gas
m3=c3/c;//Volume of O2 in 1 (m^3) of flue gas
m4=c4/c;//Volume of N2 in 1 (m^3) of flue gas
d1=m1*100;//Volume analysis of CO2
d2=m2*100;//Volume analysis of SO2
d3=m3*100;//Volume analysis of O2
d4=m4*100;//Volume analysis of N2

//OUTPUT
mprintf('Minimum mass of air required is %3.1f kg \n Total mass of dry flue gases per kg of fuel is %3.2f kg \n Percentage composition of CO2 by volume is %3.2f percent \n Percentage composition of SO2 by volume is %3.3f percent \n Percentage composition of O2 by volume is %3.1f percent \n Percentage composition of N2 by volume is %3.2f percent',m,md,d1,d2,d3,d4)






//==============================END OF PROGRAM=================================
