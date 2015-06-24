//Chapter-1, Illustration 1, Page 15
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.91;//Percentage composition of Carbon
H=0.03;//Percentage composition of Hydrogen
O=0.02;//Percentage composition of Oxygen
N=0.008;//Percentage composition of Nitrogen
S=0.008;//Percentage composition of Sulphur

//CALCULATIONS
m=(11.5*C)+(34.5*(H-(O/8)))+(4.3*S);//Mass of air per kg of coal in kg

//OUTPUT
mprintf('Minimum mass of air per kg of coal is %3.2f kg',m)





//==============================END OF PROGRAM=================================
