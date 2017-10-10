//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 9, Page 124
//Title: Estimation of dry bulb and wet bulb temperature
//=============================================================================
clear
clc

//INPUT
m = [12.1 0.1 7.6 80.2]; //Composition of CO2, CO, O2, N2 in percentage

//DATA FROM GRAPH
//Part(a)
T1 = 87; //Wet bulb temperature obtained from Fig 19, Page 120 & Fig 20, 122
//Part(b)
T2 = 140; //Dry bulb temperature obtained from Fig 19, Page 120 & Fig 20, 122

//OUTPUT
// Console output
mprintf('\n (a) Wet bulb temperature = %2.0f degree F \n (b) Dry bulb temperature = %3.0f degree F',T1,T2);

// File output
fd= mopen('.\Chapter5_Example9_Output.txt','w');
mfprintf(fd,'\n (a) Wet bulb temperature = %2.0f degree F \n (b) Dry bulb temperature = %3.0f degree F',T1,T2);
mclose(fd);

//=========================END OF PROGRAM======================================
