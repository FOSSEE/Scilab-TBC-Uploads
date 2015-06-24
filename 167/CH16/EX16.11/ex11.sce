//example 11
//Composition of Different Phases of a Mixture
clear
clc
yH2Ol=0.3
yNH3l=0.7
PH2Osat=7.3851 //kPa
PNH3sat=1554.33 //kPa
PH2Og=yH2Ol*PH2Osat //vapour pressure of h2o
PNH3g=yNH3l*PNH3sat // vapour pressure of nh3
Ptotal=PH2Og+PNH3g
yH2Og=PH2Og/Ptotal //mole fraction of h2o in gas phase
yNH3=PNH3g/Ptotal //mole fraction of nh3 in gas phase
printf("\n The mole fraction of H2O in the mixture is = %.4f . \n",yH2Og);
printf("\n The mole fraction of NH3 in the mixture is = %.4f . \n",yNH3);