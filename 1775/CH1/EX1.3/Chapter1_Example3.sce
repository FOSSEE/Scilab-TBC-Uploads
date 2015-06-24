//Chapter-1, Illustration 3, Page 16
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.78;//Percentage composition of Carbon
H=0.06;//Percentage composition of Hydrogen
O=0.078;//Percentage composition of Oxygen
N=0.012;//Percentage composition of Nitrogen
S=0.03;//Percentage composition of Sulphur

//CALCULATIONS
m=(11.5*C)+(34.5*(H-(O/8)))+(4.3*S);//Minimum quantity of air required in kg
mt=((11*C)/3)+(9*H)+(2*S)+(8.32+N);//Total mass of products of combustion in kg

//OUTPUT
mprintf('Minimum quantity of air required for complete combustion is %3.2f kg \n Total mass of products of combustion is %3.3f kg',m,mt)





//==============================END OF PROGRAM=================================
