//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 4, Page 114
//Title: Calculation of dew point
//=============================================================================
clear
clc

//INPUT
v1 = 10.1; //Composition by volume of benzene
P = [750 750 700]; //Various pressurea in mm Hg at which dew point is to be computed

//CALCULATIONS
P1 = P(1)*v1/100; //Partial pressure of benzene in mm Hg at 25 degree C and 750 mm Hg
T1 = 20; //Temperature in degree C corresponding to pressure P1 obtained from vapor-pressure data of Benzene Fig. 15 Page 84
P2 = P(2)*v1/100; //Partial pressure of benzene in mm Hg at 30 degree C and 750 mm Hg
T2 = 20; //Temperature in degree C corresponding to pressure P2 obtained from vapor-pressure data of Benzene Fig. 15 Page 84
P3 = P(3)*v1/100; //Partial pressure of benzene in mm Hg at 30 degree C and 700 mm Hg
T3 = 18.7; //Temperature in degree C corresponding to pressure P3 obtained from vapor-pressure data of Benzene Fig. 15 Page 84

//OUTPUT
// Console output
mprintf('\n Dew point of benzene vapor and air mixture at \n (a) 25 degree C and 750 mm Hg = %2.0f degee C ',T1);
mprintf('\n (b) 30 degree C and 750 mm Hg = %2.0f degree C ',T3);
mprintf('\n (c) 30 degree C and 700 mm Hg = %3.1f degree C',T3);
mprintf('\n Above results shows that the dew point does not depend on temperature but vary with the total pressure');

// File output
fd= mopen('.\Chapter5_Example4_Output.txt','w');
mfprintf(fd,'\n Dew point of benzene vapor and air mixture at \n (a) 25 degree C and 750 mm Hg = %2.0f degee C ',T1);
mfprintf(fd,'\n (b) 30 degree C and 750 mm Hg = %2.0f degree C ',T3);
mfprintf(fd,'\n (c) 30 degree C and 700 mm Hg = %3.1f degree C',T3);
mfprintf(fd,'\n Above results shows that the dew point does not depend on temperature but vary with the total pressure');
mclose(fd);

//=========================END OF PROGRAM======================================
