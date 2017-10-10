//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-2, Illustration 5, Page 37
//Title: Expressing mole percent into weight percent
//=============================================================================
clear
clc

//INPUT
N = 100; //Total no of moles of solution in g mole(Basis of calculation)
n1 = 25; //No of moles of napthalene present in solution in g mole
MW = [128.1,78.1]; //Molecular weight of napthalene and benzene in g/g mole

//CALCULATION
w1 = n1*MW(1); //Weight of napthalene present in the solution in grams
w2 = (N-n1)*MW(2); //Weight of benzene present in the solution in grams
W = w1+w2; //Total weight of solution in grams
m1 = w1*100/W; //Weight % of napthalene in solution
m2 = w2*100/W; //Weight % of benzene in solution

//OUTPUT
mprintf('\n Weight percent of napthalene = %3.1f',m1);
mprintf('\n Weight percent of benzene = %3.1f',m2);

//===========================END OF PROGRAM====================================