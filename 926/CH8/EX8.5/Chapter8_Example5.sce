//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-8, Illustration 5, Page 281
//Title: Calculation of enthalpy of steam
//=============================================================================
clear
clc

//INPUT
T = [350 32]; //Given and liquid state temperature of steam in degree F
P = 50; //Given pressure in psi
TS = 281; //Saturation temperature of steam at 50 psi in degree F obtained from Table 5 Page 83
CP1 = 1.006; //Mean specific heat of water between 32-281 degree F in BTU per lb degree F
CP2 = 9.2; //Mean heat capacity of water vapor between 32-281 degree F in BTU per lb-mole degree F
lamda1 = 924; //Latent heat of vaporization of water at 281 degree F in BTU per lb
MW = 18; //Molecular weight of water in lb/lb-mole

//CALCULATION
lamda2 = (TS-T(2))*CP1; //Enthalpy of liquid water at 281 degree F in BTU per lb
lamda3 = (T(1)-TS)*CP2/MW; //Superheat of vapor in BTU per lb
lamda = lamda1+lamda2+lamda3; //Total enyhalpy in BTU per lb

//OUTPUT
// Console Output
mprintf('\n Total enthalpy of 1 lb steam = %5.1f BTU per lb',lamda);

// File Output
fd= mopen('.\Chapter8_Example5_Output.txt','w');
mfprintf(fd,'\n Total enthalpy of 1 lb steam = %5.1f BTU per lb',lamda);
mclose(fd);

//=============================END OF PROGRMAM=================================

// Remark
// Difference between the solution computed by scilab and that given in book is due to round off error. For instance, enthalpy computed by (281-32)*1.006 should be 250.494 and not 2501. as printed in the textbook.
