//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 7, Page 59
//Title: Calculation of density
//=============================================================================
clear
clc

//INPUT
W = 1; //Total weight of mixture in lb
w = [.111,.889]; //Weight of hydrogen and oxygen respectively in lb
MW = [2,32]; //Molecular weight of hydrogen and oxygen respectively in lb/lb mole
T = 30; //Given temperature in degree C
T2 = 273; //Temperature at standard conditions in K
P1 = 29; //Given prssure in in. Hg
P2 = 29.92; //Pressure at standard conditions in in. Hg

//CALCULATIONS
n1 = w(1)/MW(1); //No of moles of H2 in lb mole
n2 = w(2)/MW(2); //No of moles of O2 in lb mole
N = n1+n2; //Total molal quantity in lb mole
T1 = T+273; //given temperature in K
V2 = N*359; //Volume at standard condition in cu ft
V1= V2*(P2/P1)*(T1/T2); //Volume of the mixture at given conditions in cu ft
rho = W/V1; //Density of the mixture at given conditions in lb per cu ft

//OUTPUT
mprintf('\n The density of the mixture at %2.0f in. Hg and %2.0f degree C is %5.4f lb per cu ft',P1,T,rho);

//====================END OF PROGRAM===========================================
