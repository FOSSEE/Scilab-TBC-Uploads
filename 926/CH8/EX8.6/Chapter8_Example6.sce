//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-8, Illustration 6, Page 282
//Title: Calculation of total enthalpy
//=============================================================================
clear
clc

//INPUT
AW = 65.4; //Atomic weight of zinc
T = [1000 0 419 907]; //Given temperature, solid state temperature, melting point and boiling point of zinc in degree C
CP = [0.105 0.109]; //Mean specific heat of solid from 0-419 degree C and liquid from 419-907 degree C in cal per gram degree C obtained from Fig 63, Page 260
lamda1 = 1660; //Heat of fusion in cal per g-atom obtained from Table 24, Page 272
CP1 = 4.97; //Molal heat capacity of zinc vapor at constant preesure in cal per g-mole

//CALCULATION
T1 = T+273; //Given temperature, solid state temperature, melting point and boiling point of zinc in K
lamda2 = T1(4)*(8.75+4.571*log10(T1(4))); //Heat of vaporization at normal boiling point in cal per g-mole
Lamda1 = CP(1)*(T(3)-T(2)); //Heat absorbed by solid in cal per gram
Lamda2 = lamda1/AW; //Heat of fusion in cal per gram
Lamda3 = CP(2)*(T(4)-T(3)); //Heat absorbed by liquid in cal per gram
Lamda4 = lamda2/AW; //Heat of vaporization in cal per gram
Lamda5 = CP1*(T(1)-T(4))/AW; //Heat absorbed by vapor in cal per gram
Lamda = Lamda1+Lamda2+Lamda3+Lamda4+Lamda5; //Total enthalpy in cal per gram

//OUTPUT
// Console Output
mprintf('\n Total enthalpy of zinc vapor at 1000 degree C = %3.0f cal per gram',Lamda);

// File Output
fd= mopen('.\Chapter8_Example6_Output.txt','w');
mfprintf(fd,'\n Total enthalpy of zinc vapor at 1000 degree C = %3.0f cal per gram',Lamda);
mclose(fd);

//=============================END OF PROGRMAM=================================
