//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-8, Illustration 3, Page 278
//Title: Calculation of heat of vaporization
//=============================================================================
clear
clc

//INPUT
T = 200; //Given temperature in degree F
TC = 232.5; //Critical temperature of Freon 12 in degree F
SRTR  = .516; //Heat of vaporization factor of Freon 12 from Table 27, Page 278

//CALCULATION
TR = (T+460)/(TC+460); //Reduced temperature of freon 12 at 200 degree F
Lamda_1 = 7707; //Molal heat of vaporization of water at TR=0.951 in BTU per lb-mole obtained from Table page 279
Lamda_2 = Lamda_1*SRTR; //Heat of vaporization of freon 12 at 200 degree F

//OUTPUT
// Console Output
mprintf('\n Heat of vaporization of freon 12 at 200 degree F = %4.0f BTU per lb-mole',Lamda_2);

// File Output
fd= mopen('.\Chapter8_Example3_Output.txt','w');        // PRN: File name and path changed NAR 
mfprintf(fd,'\n Heat of vaporization of freon 12 at 200 degree F = %4.0f BTU per lb-mole',Lamda_2);
mclose(fd);

//=================================END OF PROGRAM==============================
