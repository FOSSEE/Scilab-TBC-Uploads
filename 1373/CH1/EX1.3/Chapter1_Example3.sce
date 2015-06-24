//Chapter-1, Example 1.3, Page 11
//=============================================================================
clc
clear

//INPUT DATA
T=55;//Surface temperature in degree C

//CALCULATIONS
q=(5.6697*10^-8*(273+T)^4)/1000;//The rate at which the radiator emits radiant heat per unit area if it behaves as a black body in kW/m^2

//OUTPUT
mprintf('The rate at which the radiator emits radiant heat per unit area is %3.2f kW/m^2',q)

//=================================END OF PROGRAM==============================
