//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 2, Page 113
//Title: Calculation of relative saturation and percentage saturation
//=============================================================================
clear
clc

//INPUT
P = [745 184.8] //Working pressure and vapor pressure of acetone at 20 degree C in mm Hg
v = 14.8 //Composition by volume of acetone

//CALCULATIONS
P1 = P(1)*v/100; //Partial pressure of acetone in mm Hg
RS = P1*100/P(2); //Relative saturation of mixture
n1 = v/100; //lb mole of acetone
n2 = 1-n1; //lb mole of nitrogen
n3 = n1/n2; //lb moles of acetone per lb moles of nitrogen
V1 = P(2)*100/P(1); //Percentage by volume of acetone
n4 = V1/100; //lb moles of acetone
n5 = 1-n4; //lb moles of nitrogen
n6 = n4/n5; //Moles of acetone per moles of nitrogen
PS = n3*100/n6; //Percentage saturation

//OUTPUT
//Console output
mprintf('\n Relative saturation of the mixture at given conditions = %3.1f %% \n Percentage saturation = %3.1f %%',RS,PS);

// File output
fd= mopen('.\Chapter5_Example2_Output.txt','w');
mfprintf(fd,'\n Relative saturation of the mixture at given conditions = %3.1f %% \n Percentage saturation = %3.1f %%',RS,PS);
mclose(fd);

//=============================END OF PROGRAM==================================
