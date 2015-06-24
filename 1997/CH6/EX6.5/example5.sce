//Chapter-6 example 5
//=============================================================================
clc;
clear;
//input data
I2  = 28*10^-3 ;//induced current in amperes
V2  = 850;   //fundamental component of catcher-gap voltage
Vb  = 900;   //beam voltage
Ib  = 26*10^-3;//beam current
Bc  = 0.946;//beam coupling coefficient of catcher gap
//Calculations
n   = ((Bc*I2*V2)/(2*Ib*Vb))*100;//efficiency of klystron
//output
mprintf('Efficiency of the klystron is %g \n',n);
mprintf(' Note:In textbook Bc value is taken as 0.946 in calculation')
//=============end of the program===============================================
