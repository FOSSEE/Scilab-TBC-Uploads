//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-2, Illustration 3, Page 31
//Title: Calculation of weight and volume from reaction stoichiometry
//=============================================================================
clear
clc

//INPUT
w1 = 100; //Weight of hydrogen in lb(Basis of calculation)
MW = [55.84,18.02,231.5,2.016]; //Atomic weight of iron, Steam, ferric oxide, hydrogen in lb/lb-mole
//From the reaction stoichiometry
stoic = [3,4,1,4]; //Stoichiometric coefficient of Fe, H2O, Fe3O4, H2

//CALCULATION
//part(a)
n1 = w1/MW(4); //Moles of hydrogen produced in lb mole
n2 = n1*stoic(1)/stoic(4); //Atoms of iron required in lb atom
w2 = n2*MW(1); //Weight of iron required in lb
n3 = n1*stoic(2)/stoic(4); //Moles of Steam required in lb mole
w3 = n3*MW(2); //Weight of steam required in lb
n4 = n1*stoic(3)/stoic(4); //Moles of ferric oxide required in lb mole
w4 = n4*MW(3); //Weight of ferric oxide required in lb
M1 = w2+w3; //Total input in lb
M2 = w1+w4; //Total output in lb
//part(b)
v = n1*359; //volume of hydrogen at standard conditions in cu ft

//OUTPUT
mprintf('\n (a) To produce %3.0f lb of hydrogen, the weight of iron and steam required is %4.0f lb and %3.0f lb respectively',w1,w2,w3);
mprintf('\n     The weight of ferric oxide formed = %4.0f lb',w4);
mprintf('\n (b) Volume occupied by hydrogen at standard conditions = %5.0f cu ft',v);

//============================END OF PROGRAM===================================
