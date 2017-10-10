//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 12, Page 127
//Title: Calculation of molal humidity
//=============================================================================
clear
clc

//INPUT
P = 1; //Pressure of entering gas in atm
DBT = 120; //Temperature of entering gas in degree F

//DATA FROM GRAPH
WBT = 71; //Wet bulb temperature in degree F corresponding to DBT of 120 degree F from Fig 20 Page 122
mH = 0.027; //Molal humidity corresponding to DBT of 120 degree F from Fig 20 Page 122

//OUTPUT
// Console output
mprintf('\n The temperature and molal humidity of saturated carbon dioxide leaving the chamber is %2.0f degree F and %4.3f respectively',WBT,mH);

// File output
fd= mopen('.\Chapter5_Example12_Output.txt','w');
mfprintf(fd,'\n The temperature and molal humidity of saturated carbon dioxide leaving the chamber is %2.0f degree F and %4.3f respectively',WBT,mH);
mclose(fd);

//=============================END OF PROGRMAM=================================
