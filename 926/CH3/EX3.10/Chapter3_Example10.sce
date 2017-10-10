//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-3, Illustration 10, Page 62
//Title: Calculation of volume change with change in composition
//=============================================================================
clear
clc

//INPUT
v = 100; //Volume of gas entering in cu ft
v1 = 75; //Volume of air before absorption in cu ft
v2 = 25; //Volume of HCl before absorption in cu ft
a = 98; //Percent of HCl removed by absorption
P = [743,738]; //Pressure of gas before and after entering the system in mm Hg
T = [120,80]; //Temperature of gas before and after entering the system in degree F
T3 = 492; //Temperature at standard condition in degree R
P3 = 760; //Pressure at standard conditions in mm Hg
MW = 36.5; //Molecular weight of HCl in lb/lb mole

//CALCULATIONS
v3 = v2*(a/100); //Pure component volume of HCl absorbed in cu ft
v4 =v2-v3; //Volume of HCl remaining in cu ft
v5 = v1+v4; //Vulome of gas remaining in cu ft
T1 = T(1)+460; //Temperature of gas entering in degree R
T2 = T(2)+460; //Temperature of gas leaving in degree R
v6 = v5*(P(1)/P(2))*(T2/T1); //Volume of gas leaving in cu ft
x = v4*100/v5; //Percentage composition by volume of HCl
y = 100-x; //Percentage composition by volume of air
v7 = v3*(P(1)/P3)*(T3/T1); //Volume at standard condition of HCl absorbed in cu ft
n = v7/359; //No of moles of HCl absorbed in lb mole
w = n*MW; //Weight of HCl absorbed in lb

//OUTPUT
mprintf('\n (a) Percentage composition by volume of gases leaving the absorption apparatus are %3.2f percent HCl and %4.2f percent air \n (b) Weight of HCl removed per %3.0f cu ft of gas is %3.2f lb',x,y,v,w);

//==============================END OF PROGRAM=================================
