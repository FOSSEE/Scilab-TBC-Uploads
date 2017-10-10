//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-2, Illustration 1, Page 30
//Title: Calculating volume of gas at standard conditions from given weight
//=============================================================================
clear
clc

//INPUT
w = 25; //Weight of liquid chlorine in lb
mw = 70.92; //molecular weight of chlorine gas in lb/lb mol

//CALCULATION
n = w/mw; //To find no of moles of chlorine gas in lb mol
v = n*359; //To compute volume of chlorine gas in cu ft at standard conditions

//OUTPUT
mprintf('\n The volume of chlorine gas that will be occupied at standard conditions = %4.1f cu ft',v);

//======================END OF PROGRAM=========================================
