//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-3, Example 3, Page 82
//Title: Estimation of terminal velocity of falling particles
//==========================================================================================================
clear
clc

//INPUT
rhog=1.2e-3;//Density of air in g/cc
myu=1.8e-4//Viscosity of air in g/cm s
dpbar=0.016//Mean diameter of solids in centimeter
phis=0.67;//Sphericity of solids
rhos=2.6;//Density of solids in g/cc
g=980//Acceleration due to gravity in square cm/s^2

//CALCULATION
dpstar=dpbar*((rhog*(rhos-rhog)*g)/myu^2)^(1/3);//Calculation of dimensionless particle size Eq.(31)
utstar=((18/(dpstar^2))+(2.335-(1.744*phis))/(dpstar^0.5))^-1;//Calculation of dimensionless gas velocity Eq.(33)
ut=utstar*((myu*(rhos-rhog)*g)/rhog^2)^(1/3);//Calculation of terminal velocity of falling particles Eq.(32)


//OUTPUT
mprintf('\nThe dimensionless particle size = %f', dpstar);
mprintf('\nThe dimensionless gas velocity = %f', utstar);
mprintf('\nThe terminal velocity of falling particles = %fcm/s', ut);

//====================================END OF PROGRAM ======================================================