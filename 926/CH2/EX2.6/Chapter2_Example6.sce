//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-2, Illustration 6, Page 37
//Title: Calculation of composition, average molecular weight and density
//=============================================================================
clear
clc

//INPUT
N = 100; //Total no of moles of natural gas in lb mole(Basis of calculation)
v = [83.5,12.5,4]; //Volumetric percent of methane, ethane and nitrogen respectively
MW = [16.03,30.05,28.02]; //Molecular weight of methane, ethane and nitrogen respectively

//CALCULATION
//part(a)
x = v; //mol percent of methane, ethane and nitrogen respectively
//part(b)
w1 = v(1)*MW(1); //Weight of methane in lb
w2 = v(2)*MW(2); //Weight of ethane in lb
w3 = v(3)*MW(3); //Weight of nitrogen in lb
W = w1+w2+w3; //Total weight of the mixture in lb
m1 = w1*100/W; //weight percent of methane
m2 = w2*100/W; //weight percent of ethane
m3 = w3*100/W; //weight percent of nitrogen
//part(c)
AVG_MW = W/100; //Average molecular weight in lb/lb mole
//part(d)
v = N*359; //Volume of natural gas at standard conditions in cu ft
rho = W/v; //Density of natural gas at standard conditions in lb/cu ft

//OUTPUT
mprintf('\n(a) The mole percent of methane, ethane and nitrogen are %3.1f, %3.1f and %2.0f respectively',x(1),x(2),x(3));
mprintf('\n(b) The weight percent of methane ethane and nitrogen are %3.1f, %3.1f and %2.1f respectively',m1,m2,m3);
mprintf('\n(c) The average molecular weight of natural gas is %4.2f lb/lb mole',AVG_MW);
mprintf('\n(d) The density at standard conditions is %5.4f lb/cu ft',rho);

//=============================END OF PROGRAM==================================