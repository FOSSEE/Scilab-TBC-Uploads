//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-2, Illustration 2, Page 31
//Title: Calculating mass from given volume at standard conditions
//=============================================================================
clear
clc

//INPUT
v = 500; //Volume of gaseous propane in liters
mw = 44.06; //Molecular weight of propane in g/g mole

//CAlCULATION
n = v/22.4; //To find the no of moles of propane in g mole
m = n*mw; //To calculate the weight of propane in grams

//OUTPUT
mprintf('\n Weight of liquid propane formed after liquification = %3.0f grams',m);

//==============================END OF PROGRAM=================================
