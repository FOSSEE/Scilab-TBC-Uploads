//Chapter-1, Illustration 10, Page 23
//Title: Fuels and Combustion
//=============================================================================
clc
clear

//INPUT DATA
H2=0.27;//Percentage composition of H2 by volume
CO2=0.18;//Percentage composition of CO2 by volume
CO=0.125;//Percentage composition of CO by volume
CH4=0.025;//Percentage composition of CH4 by volume
N2=0.4;//Percentage composition of N2 by volume

//CALCULATIONS
v=(2.38*(H2+CO))+(9.52*CH4);//Volume of air required for complete combustion in (m^3)

//OUTPUT
mprintf('Volume of air required for complete combustion is %3.3f (m^3)',v)






//==============================END OF PROGRAM=================================
