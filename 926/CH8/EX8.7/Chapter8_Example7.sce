//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-8, Illustration 7, Page 283
//Title: Calculation of total enthalpy
//=============================================================================
clear
clc

//INPUT
T = [100 32]; //Given temperature and standard temperature of dry air in degree F
MW = [18 29]; //Molecular weight of water and air respectively

//DATA FROM GRAPH
H = 0.0215; //humidity in terms of lb of water per lb of dry air at given conditions obtained from Fig 20, Page 122
DP = 79; //Dew point corresponding to above humidity in degree F obtained from Fig 20, Page 122
CP = [8.02 6.95]; //Molal heat capacities of water vapor between 79-100 degree F and 32-100 degree F in BTU per lb-mole degree F obtained from Fig 62, Page 259
lamda = 1046; //Heat of vaporization at 79 degree F in BTU per lb obtained from Fig 19, Page 120

//CALCULATION
Lamda1 = (T(1)-T(2))*CP(2)/MW(2); //Sensible enthalpy of air in BTU per lb
Lamda2 = (DP-T(2))*H; //Sensible enthalpy of liquid water in BTU per lb
Lamda3 = lamda*H; //Latent heat of water in BTU per lb
Lamda4 = (T(1)-DP)*H*CP(1)/MW(1); //Superheat of water vapor in BTU per lb
Lamda = Lamda1+Lamda2+Lamda3+Lamda4; //Total enthalpy in BTU per lb of dry air

//OUTPUT
// Console Output
mprintf('\n Total enthalpy of dry air is %2.0f BTU per lb',Lamda);

// File Output
fd= mopen('.\Chapter8_Example7_Output.txt','w');
mfprintf(fd,'\n Total enthalpy of dry air is %2.0f BTU per lb',Lamda);
mclose(fd);

//=============================END OF PROGRMAM=================================
