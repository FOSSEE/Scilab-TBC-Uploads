//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 11, Page 127
//Title: Calculation of dry bulb and wet bulb temperature
//=============================================================================
clear
clc

//INPUT
T = [190 90]; //Dry bulb and wet bulb temperature of air entering dryer in degree F
n = 0.028; //lb-mole of water evaporated per lb mole of dry air entering

//DATA FROM GRAPH
mH = 0.011; //Molal humidity corresponding to DBT of 190 degree F and WBT of 90 degree F from Fig 19, Pg 120
DBT = 116; //Dry bulb temperature in degree F corresponding to molal humidity of 0.039 from Fig 19, Pg 120
PS = 35; //Percentage saturation corresponding to molal humidity of 0.039 and DBT of 116 degree F from Fig 19, Pg 120

//CALCULATIONS
mH1 = n+mH; //Molal humidity of leaving air
WBT = T(2); //Wet bulb temperature of leaving air in degree F

//OUTPPUT
// Console output
mprintf('\n Dry bulb temperature of air leaving the drier = %3.0f degree F',WBT);
mprintf('\n wet bulb temperature of air leaving the drier = %2.0f degree F',WBT);
mprintf('\n Percentage saturation of air leaving the drier is %2.0f percent',PS);

// File output
fd= mopen('.\Chapter5_Example11_Output.txt','w');
mfprintf(fd,'\n Dry bulb temperature of air leaving the drier = %3.0f degree F',WBT);
mfprintf(fd,'\n wet bulb temperature of air leaving the drier = %2.0f degree F',WBT);
mfprintf(fd,'\n Percentage saturation of air leaving the drier is %2.0f percent',PS);
mclose(fd);

//=============================END OF PROGRAM==================================
