//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 9, Page 61
//Title: Calculation of volume change with change in composition
//=============================================================================
clear
clc

//INPUT
Nt = 1; //Total no of moles of combustion gas in g mole
N = [.792,.072,.136]; //No of moles of N2, O2 and CO2 respectively before evaporation in g mole
T1 = 200; //Temperature of gases passed into evaporator in degree C
P1 = 743; //Pressure of gases passed into evaporator in mm Hg
n = [.483,.044,.083,.39]; //No of moles of N2, O2, CO2 and water respectively after evaporation in g mole
T2 = 85; //Temperature of gases after evaporation in degree C
P2 = 740; //Pressure of gases after evaporation in mm Hg
MW = [28,32,44,18]; //Molecular weight of N2, O2, CO2 and water respectively in g/ g mole
R = 82.1; //Ideal gas constant in cc-atm per K
v = 100; //Volume of gas entering in cu ft

//CALCULATIONS
P = P1/760; //Pressure of gases passed to evaporator in atm
T3 = T1+273; //Temperature of gases passed to evaporator in K
v1 = (N(1)+N(2)+N(3))*R*T3/P; //Total volume of gases passed into evaporator in cc
v2 = v1*3.2808^3*(10^-6); //Total volume of gases passed into evaporator in cu ft
n1 = Nt/(n(1)+n(2)+n(3)); //No of moles of gases leaving evaporator in g mole
n2 = n1 -Nt; //No of moles of water leaving the evaporator in g mole
p = P2/760; //Pressure of gases leaving evaporator in atm
T4 = T2+273; //Temperature of gases laving evaporator in K
V1 = (N(1)+N(2)+N(3)+n2)*R*T4/p; //Volume of gases leaving in cc
V2 = V1*3.2808^3*10^-6; //Volume of gases leaving evaporator in cu ft
V = (V2/v2)*v; //Volume of gas leaving in cu ft per 100 cu ft entering
w = n2*MW(4)*2.2046*10^-3; //weight of water leaving evaporator in lb
W = w*(v/v2); //Weight of water evaporated in lb per 100 ft of gas entering 

//OUTPUT
mprintf('\n Weight of water evaporated per %3.0f cu ft of gas entering is %3.2f lb',v,W);

//===========================END OF PROGRAM====================================