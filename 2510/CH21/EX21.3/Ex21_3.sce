//Variable declaration:
//From figure 21.5:
m = 2                           //Mass flowrate (lb)
cP = 1                          //Heat capacity (Btu/lb. F)
DS1 = -0.2744                   //Entropy for hot fluid for E exchanger (Btu/ F)
T1 = 180                        //Temperature cold fluid entering the E exchabger ( F)
T2 = 60                         //Temperature cold fluid leaving the E exchabger ( F)

//Calculation:
DS2 = m*cP*log((T1+460)/(T2+460))   //Entropy for cold fluid for E exchanger (Btu/ F)
DS_E = DS1+DS2                  //Entropy for E exchanger (Btu/ F)
DS_F = DS_E                     //Entropy for F exchanger (Btu/ F)
DSt = DS_F+DS_E                 //Entropy change in exchangers E and F (Btu/ F)

//Result:
printf("The entropy change in exchangers E and F is : %.4f Btu/ F",DSt)
