//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 8, Page 61
//Title: Calculation of density of air
//=============================================================================
clear
clc

//INPUT
N = 1; //Total no moles of air in g mole
n = [.21,.79]; //No of moles of O2 and N2 respectively in g mole
MW = [32,28]; //Moleculaw weight of O2 and N2 respectively in g/g mole
T = 70; //Given temperature in dergee F
P1 = 741; //Given pressure in mm Hg
T2 = 492;  //Temperature at standard conditions in degree R
P2 = 760; //Pressure at standard conditions in mm Hg
V2 = 22.41; //Volume at standard conditions in liters

//CAlCULATIONS
w1 = n(1)*MW(1); //Weight of O2 in grams
w2 = n(2)*MW(2); //Weight of N2 in grams
W = w1+w2; //Total weight of air in grams
T1 = T+460; //Given temperature in dergree R
V1 = V2*(P2/P1)*(T1/T2); //Volume of air at given conditions in liters
rho = W/V1; //Dendity of air at given conditions in grams per liter

//OUTPUT
mprintf('\n The density of air at %3.0f mm Hg and %2.0f degree F is %4.3f grams per liter', P1,T,rho);

//==========================END OF PROGRAM=====================================
