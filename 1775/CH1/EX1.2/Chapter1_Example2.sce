//Chapter-1, Illustration 2, Page 16
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
C=0.86;//Percentage composition of Carbon
H=0.12;//Percentage composition of Hydrogen
O=0.01;//Percentage composition of Oxygen
S=0.01;//Percentage composition of Sulphur
v=0.773;//Specific volume of air at N.T.P in (m^3)/kg

//CALCULATIONS
m=(11.5*C)+(34.5*(H-(O/8)))+(4.3*S);//Theoretical mass of air per kg of coal in kg
vth=m*v;//Theoretical volume of air at N.T.P per kg fuel in (m^3)/kg of fuel

//OUTPUT
mprintf('Theoretical volume of air at N.T.P per kg fuel is %3.2f (m^3)/kg of fuel',vth)





//==============================END OF PROGRAM=================================
