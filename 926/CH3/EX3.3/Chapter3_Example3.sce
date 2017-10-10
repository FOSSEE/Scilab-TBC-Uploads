//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 3, Page 54
//Title: Calculation of pressure
//=============================================================================
clear
clc

//INPUT
W = 10; //Weight of CO2 in lb
MW = 44; //Molecular weight of CO2 in lb/lb mole
P1 = 14.7; //Pressure at standard condition in psi
T1 = 273; //Temperature at standard conditions in K
V2 = 20; //Volume of CO2 after compressing in cu ft
T = 30; //Given temperature in degree C

//CALCULATIONS
n = W/MW; //No of noles of CO2 in lb mole
V1 = n*359; //Volume of CO2 at standard conditions in cu ft
T2 = T+273; //Given temperature in K
P2 = P1*(V1/V2)*(T2/T1); //Pressure at given conditions in psi

//OUTPUT
mprintf('\n Pressure required to compress %2.0f lb of CO2 to a volume of %2.0f cu ft at given conditions is %3.1f psi',W,V2,P2);

//=================================END OF PROGRAM==============================