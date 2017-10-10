//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 6, Page 59
//Title: Calculation of Average molecular weight
//=============================================================================
clear
clc

//INPUT
N = 1; //Total no moles of mixture
V = [13.1,7.7,79.2]; //Composition of Carbon dioxide, Oxygen and nitrogen respectively by volume %
MW = [44,32,28]; //Molecular weight of CO2, O2 and N2 respectively in g/g mole

//CALCULATION
n = V/100; // No of moles of CO2, O2, n2 in g mole
W1 = n(1)*MW(1); //Weight of CO2 in grams
W2 = n(2)*MW(2); //Weight of O2 in grams
W3 = n(3)*MW(3); //Weight of N2 in grams
W = W1+W2+W3; //Total weight of flue gas in grams
AV_MW = W/N; //Average molecular weight of flue gas in g/g mole

//OUTPUT
mprintf('\n The average molecular weight of flue gas is %4.2f g/g mole',AV_MW);

//========================END OF PROGRAM======================================