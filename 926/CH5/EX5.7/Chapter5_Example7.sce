//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 7, Page 119
//Title: Calculation of condensation pressure
//=============================================================================
clear
clc

//INPUT
VP = [229.2 89.1]; //Vapour pressure of acetone at 25 degree C and 5 degree C
P = 750; //Pressure of given mixture in mm Hg
w = 90; //Amount of acetone to be condensed;


//CALCULATION
n1 = VP(1)/P; //lb moles of acetone present
n2 = 1-n1; //lb moles of flue gases present
n3 = (1-(w/100))*n1; //lb moles of acetone in final mixture
n4 = n2+n3; //lb moles of final mixture of gas
PP = VP(2); //Partial pressure of acetone in final mixture
m = n3*100/n4; //Mole percent of acetone in final mixture
Pf = PP/(m/100); //Final pressure in mm Hg

//OUTPUT
// Console output
mprintf('\n Final pressure after condensation = %.0f mm Hg',Pf);

// File output
fd= mopen('.\Chapter5_Example7_Output.txt','w');
mfprintf(fd,'\n Final pressure after condensation = %.0f mm Hg',Pf);
mclose(fd);

//=========================END OF PROGRAM======================================

// Remark: Difference between the nswer given in the textbook (2110 mm Hg) and that computed using scilab code (2114 mm Hg) is due to round off error 
