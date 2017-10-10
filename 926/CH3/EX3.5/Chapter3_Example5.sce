//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 5, Page 55
//Title: Calculation of percentage dissociation of gas
//=============================================================================
clear
clc

//INPUT
W = 17.2; //Weight of N2O4 in grams
V1 = 11450; //Volume occupied by N2O4 in cc
P1 = 720; //Given pressure in  mm hg
T = 100; //Given temperature in degree C
MW = 92; //Molecular weight of N2O4 in g/g mole
V2 = 22400; //Volume at standard conditions in cc
P2 = 760; //Pressure at standard conditions in mm Hg
T2 = 273; //Temperature at standard conditions in K

//CALCULATIONS
T1 = T+273; //Given temperature in K
n1 = W/MW; //No of moles of N2O4 initially present in g mole
n2 = (V1/V2)*(T2/T1)*(P1/P2); //Total g moles present after dissociation
x = n2-n1; //g moles of N2O4 dissociated
X = x*100/n1; //Percentage dissociation

//OUTPUT
mprintf('\n Percentage dissociation of N2O4 to NO2 is %2.0f percent',X);

//=========================END OF PROGRAM======================================