//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 11, Page 63
//Title: Calculation of volume change with change in composition
//=============================================================================
clear
clc

//INPUT
v = 100; //Volume of gas entering in cu ft
p = [59,0.5]; //Partial pressures of chlorine before entering and after leaving the absorption apparatus in mm Hg
P = [740,743]; //Pressure of entering and leaving the apparatus in mm Hg
T = [75,80]; //Temperature of the gas entering and leaving the apparatus in degree F
T3 = 492; //Temperature at standard conditions in degree R
P3 = 760; //Pressure at standard conditions in degree R
MW = 71; //Molecular weight of chlorine in lb/lb mole

//CALCULATIONS
p1 = P(1)-p(1); //Partial pressure of inert gas entering in mm Hg
p2 = P(2)-p(2); //Partial pressure of inert gas leaving in mm Hg
T1 = T(1)+460; //Temperature of gas entering in degree R
T2 = T(2)+460; //Temperature of gas leaving the apparatus in degree R
v1 = v*(p1/p2)*(T2/T1); //Volume of inert gas leaving in cu ft
v2 = v*(p(1)/P3)*(T3/T1); //Volume at standard conditions of chlorine entering in cu ft
v3 = v*(p(2)/P3)*(T3/T2); //Volume at standard conditions of chlorine leaving in cu ft
V = v2-v3; //Volume at standard conditions of chlorine absorbed in cu ft
n = V/359; //No of moles of chlorine absorbed in lb mole
W = n*MW; //Weight of chlorine absorbed in lb

//OUTPUT
mprintf('\n (a) Volume of gases leaving the apparatus per %3.0f cu ft entering is %3.1f cu ft \n (b) Weight of chlorine absorbed per %3.0f cu ft of gas entering is %3.2f lb',v,v1,v,W);

//========================END OF PROGRAM=======================================
