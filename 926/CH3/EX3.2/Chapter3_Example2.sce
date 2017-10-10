//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 2, Page 54
//Title: Calculation of weight
//=============================================================================
clear
clc

//INPUT
V2 = 100; //Volume of water vapor in cu ft
MW = 18; //Molecular weight of water vapor in lb/lb mole
P1 = 760; //Pressure at standard conditions in mm Hg
T1 = 273; //Temperature at standard conditions in K
P2 = 15.5; //Given pressure in mm Hg
T = 23; //Given temperature in degree C

//CALCULATIONS
T2 = T+273; //Given temperature in K
V1 = V2*(P2/P1)*(T1/T2); //Volume of water vapor at standard conditions in Cu ft
n = V1/359; //Moles of water vapor in lb mole
W = n*MW; //Weight of water vapor in lb

//OUTPUT
mprintf('\n Weight of %3.0f cu ft of water vapor at given conditions is %5.4f lb',V2,W);

//=================================END OF PROGRAM==============================