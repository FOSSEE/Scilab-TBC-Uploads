//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-2, illustration 4, Page 36
//Title: Expressing weight percent into mole percent
//=============================================================================
clear
clc

//INPUT
W = 100; //Weight of solution in grams(Basis of calculation)
w1 = 40; //Weight of sodium carbonate present in solution in grams
MW = [106,18.02]; //Molecular weight of sodium carbonate and water respectively in g/g-mole

//CALCULATION
n1 = w1/MW(1); //To find the no of moles of sodium carbonate in g mole
n2 = (W-w1)/MW(2); //To find the no of moles of water in g mole
N = n1+n2; //Calculation of total no of moles in g mole
x1 = n1*100/N; //Mole % of sodium carbonate
x2 = n2*100/N; //Mole % of water

//OUTPUT
mprintf('\n mole percent of Na2CO3 = %4.2f',x1);
mprintf('\n mole percent of H2O = %3.1f',x2);

//================================END OF PROGRAM===============================