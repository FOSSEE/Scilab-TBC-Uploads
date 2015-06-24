//Chapter-1, Illustration 6, Page 19
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.78;//Percentage composition of Carbon
H=0.03;//Percentage composition of Hydrogen
O=0.03;//Percentage composition of Oxygen
S=0.01;//Percentage composition of Sulphur
me=0.3;//Mass of excess air supplied

//CALCULATIONS
m=(11.5*C)+(34.5*(H-(O/8)))+(4.3*S);//Mass of air per kg of coal in kg
mec=me*m;//Excess air supplied per kg of coal in kg
mact=m+mec;//Actual mass of air supplied per kg of coal in kg
mCO2=(11*C)/3;//Mass of CO2 produced per kg of coal in kg
mHw=9*H;//Mass of H2O produced per kg of coal in kg
mSO2=2*S;//Mass of SO2 produced per kg of coal in kg
mO2=0.232*mec;//Mass of excess O2 produced per kg of coal in kg
mN2=0.768*mact;//Mass of N2 produced per kg of coal in kg

//OUTPUT
mprintf('Mass of air to be supplied is %3.2f kg \n Mass of CO2 produced per kg of coal is %3.2f kg \n Mass of H2O produced per kg of coal is %3.2f kg \n Mass of SO2 produced per kg of coal is %3.2f kg \n Mass of excess O2 produced per kg of coal is %3.2f kg \n Mass of N2 produced per kg of coal is %3.2f kg \n',m,mCO2,mHw,mSO2,mO2,mN2)




//==============================END OF PROGRAM=================================
