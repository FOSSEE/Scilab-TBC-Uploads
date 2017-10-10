//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-8, Illustration 4, Page 281
//Title: Calculation of heat of vaporization
//=============================================================================
clear
clc

//INPUT
Tb = 78; //Normal boiling point of ethyl alcohol in degree C   
Tc = 243; //Critical temperature of ethyl alcohol in degree C   
T = 180; //Given temperature of ethyl alcohol in degree C   
Lamda_1 = 204; //latent heat of vaporisation of ethyl alcohol at normal boiling point in cal per gram

//CALCULATION
TB = 273.15+Tb; //Normal boiling point of ethyl alcohol in K   
TC = 273.15+Tc; //Critical temperature of ethyl alcohol in K
T1 = 273.15+T; //Given temperature of ethyl alcohol in K 

Tr1 = TB/TC; //Reduced temperature with reference to boiling point
Tr2 = T1/TC; //Reduced temperature with reference to temperature at which heat of vaporization is to be estimated
Lamda_2 = Lamda_1*((1-Tr2)/(1-Tr1))^0.38; //Heat of vaporization at given temperature in cal per gram

//OUTPUT
// Console Output
mprintf('\n Heat of vaporization at a temperature of %3.0f degree C = %3.0f cal per gram',Tb,Lamda_2);

// File Output
fd= mopen('.\Chapter8_Example4_Output.txt','w');
mfprintf(fd,'\n Heat of vaporization at a temperature of %3.0f degree C = %3.0f cal per gram',Tb,Lamda_2);
mclose(fd);

//=============================END OF PROGRMAM=================================
