//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-8, Illustration 2, Page 275
//Title: Calculation of molal heat of vapourization
//=============================================================================
clear
clc

//INPUT
P = [1 8]; //Given pressure in atm
Tb = [56.5 133.1]; //Boiling point of acetone at 1 atm and 8 atm pressure in degree C
TC = 508.7; //Critical temperature of acetone in K
PC = 46.6; //Critical pressure of acetone in atm
Com_fac = [.966 .822]; //(ZG - ZL) value of acetone at 1 and 8 atm respectively from Table 26A, Page 275
A = 3.0644; //Vapor pressure constant of acetone from Table 8, Page 95
b = .180; //Vapor pressure constant of acetone from Table 8, Page 95
R = 1.987; //gas constant in 

//CALCULATION
TB = Tb+273.15; //Boiling point of acetone at 1 atm and 8 atm pressure in K
TR = TB/TC; //reduced temperature of acetone at 1 and 8 atm pressure respectively in degree C
lamda = 2.303*Com_fac*R*TC*A;
lamda1 = 2.303*Com_fac(1)*R*TC*(A+(40*TR(1)^2*(TR(1)-b)*exp(-20*(TR(1)-b)^2)));
lamda2 = 2.303*Com_fac(2)*R*TC*(A+(40*TR(2)^2*(TR(2)-b)*exp(-20*(TR(2)-b)^2)));

//OUTPUT
// Console Output
mprintf('\n Molal heat of vaporization of acetone at \n   1 atm pressure         8 atm pressure: \n   %4.0f cal/g-mole        %4.0f cal/g-mole   -------from equation (32), Page 275 \n   %4.0f cal/g-mole        %4.0f cal/g-mole   -------from equation (33), page 275',lamda1,lamda2,lamda(1),lamda(2));

// File output
fd= mopen('.\Chapter8_Example2_Output.txt','w');
mfprintf(fd,'\n Molal heat of vaporization of acetone at \n   1 atm pressure         8 atm pressure: \n   %4.0f cal/g-mole        %4.0f cal/g-mole   -------from equation (32), Page 275 \n   %4.0f cal/g-mole        %4.0f cal/g-mole   -------from equation (33), Page 275',lamda1,lamda2,lamda(1),lamda(2));
mclose(fd);

//=================================END OF PROGRAM==============================

//Remarks
//Difference between the solution computed by scilab and that given in book is due to round off error. The solution computed by scilab matches when the same is computed manually.
