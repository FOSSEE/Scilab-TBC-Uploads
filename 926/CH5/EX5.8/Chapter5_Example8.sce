//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 8, Page 123
//Title: Estimation of humidity and saturation
//=============================================================================
clear
clc

//INPUT
T = [100 85]; //Initial and wet bulb temperature of entering air in degree F
P = 1; //Pressure of entering air in atm
n = 1; //lb-moles of moisture free air
T1 = 492; //Temperature corresponsing to STP in Rankine
T2 = [120 115.3]; //Initial and wet bulb temperature of air in degree F in part(b)
MW = 18; //Molecular weight of water

//DATA FROM GRAPH
PS = [52 84]; //Percentage saturation at WBT of 85 and 115.3 degree C respectively obtained from Fig 20 Page 122
MH = [0.037 0.11 ]; //Molal humidity at WBT of 85 and 115.3 degree C respectively obtained from Fig 20 Page 122
DP = 80.5; //Dew point corresponding to WBT of 85 degree F obtained from Fig 20 Page 122


//CALCULATION
//Part(b)
n1 = n+MH(1); //lb-moles of wet air entering
T3 = T+460; //initial temperature of entering air in Rankine
v = n1*359*(T3(1)/T1); //Volume of wet air entering in cu ft
n2 = MH(2)-MH(1); //lb-moles of water evaporated
w1 = n2*MW; //lb of water evaporated
w2 = w1*1000/v; //lb of water evaporated per 1000 cu ft of entering wet air

//OUTPUT
// Console output
mprintf('\n (a) Molal humidity of the air = %4.3f \n     Percentage saturation = %2.0f %%\n     Dew point = %3.2f degree F',MH(1),PS(1),DP);
mprintf('\n (b) Percentage saturation of the air leaving the evaporator = %2.0f %% \n     weight of the water evaporated = %2.1f lb',PS(2),w2);

// File output
fd= mopen('.\Chapter5_Example8_Output.txt','w');
mfprintf(fd,'\n (a) Molal humidity of the air = %4.3f \n     Percentage saturation = %2.0f %%\n     Dew point = %3.2f degree F',MH(1),PS(1),DP);
mfprintf(fd,'\n (b) Percentage saturation of the air leaving the evaporator = %2.0f %% \n     weight of the water evaporated = %2.1f lb',PS(2),w2);
mclose(fd);

//=============================END OF PROGRMAM=================================
