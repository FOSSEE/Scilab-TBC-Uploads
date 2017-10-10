//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 1, Page 54
//Title: Calculation of volume
//=============================================================================
clear
clc

//INPUT
W1 = 30; //Weight of chlorine in lb
MW = 71; //Molecular weight of chlorine in lb/lb mole
P1 = 760; //Pressure at standard conditions in mm Hg
T1 = 492; //Temperature at standard conditions in degree R
P2 = 743; //Given pressure in mm Hg
T = 70; //Given temperature in degree F

//CALCULATIONS
n = W1/MW; //No of moles of chlorine in lb mole
V1= n*359; //Volume of chlorine at standard conditions in cu ft
T2 = 530; //Given temperature in degree R

V2 = V1*(P1/P2)*(T2/T1); //Volume of chlorine at given conditions in cu ft

//OUTPUT
mprintf(' \n Volume occupied by %2.0f lb of chlorine at given temperature and pressure is %3.0f cu ft',W1,V2);

//=================================END OF PROGRAM==============================