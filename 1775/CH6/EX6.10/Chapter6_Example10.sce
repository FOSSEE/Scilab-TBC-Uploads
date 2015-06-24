//Chapter-6, Illustration 10, Page 309
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
Tg=470;//Heating temperature in K
T0=290;//Cooling temperature in K
TL=270;//Refrigeration temperature in K

//CALCULATIONS
COP=((Tg-T0)/Tg)*(TL/(T0-TL));//Ideal COP of absorption refrigeration system

//OUTPUT
mprintf('Ideal COP of absorption refrigeration system is %3.2f',COP)



//==============================END OF PROGRAM=================================
