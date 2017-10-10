//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 4, Page 55
//Title: Calculation of temperature
//=============================================================================
clear
clc

//INPUT
W = 10; //Weight of nitrogen in lb
MW = 28; //Molecular weight of nitrogen in lb/lb mole
P1 = 14.7; //Pressure at standard conditions in psi
T1 = 273; //Temperature at standard conditions in K
P2 = 150; //Maximum pressure in psi
V2 = 30; //Given volume of nitrogen in cu ft

//CALCULATIONS
n = W/MW; //No of moles of Nitrogen at standard conditions in lb mole
V1 = n*359; //Volume of nitrogen at standard conditions in cu ft
T2 = T1*(P2/P1)*(V2/V1); //Temperature at given conditions in K
T = T2-273; //Temperature at given conditions in  degree C

//OUTPUT
mprintf('\n The maximum temperature to which %2.0f lb of nitrogen can be heated is %4.0f K or %4.0f degree C',W,T2,T);

//========================= END OF PROGRAM ====================================