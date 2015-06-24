//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.11\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.11  (page no. 394) 
// Solution

printf("Solution for (a)\n");
//For the rankine cycle,the Mollier chart gives
h4=1505; //Enthalpy //Unit:Btu/lbm
h5=922; //Enthalpy //Unit:Btu/lbm
h6=h5; //Enthalpy //Unit:Btu/lbm
//and at the condenser,
h1=69.74; //enthalpy //Unit:Btu/lbm
nR=(h4-h5)/(h4-h1); //efficiency of rankine cycle
printf("The efficiency of rankine cycle is %f percentage\n\n",nR*100);

printf("Solution for (b)\n");
//Figure 8.16 shows the regenerative cycle.After doing work(isentropically),W lbs of steam are bled from the turbine at 50 psia for each lbm of steam leaving the steam generator,and (1-W)    pound goes through the turbine and is condensed in the condenser to saturated liquid at 1 psia.This condensate is pumped to the heater,where it mixes with the extraced steam and leaves as  saturated liquid at 50 psia.The required enthalpies are:
//Leaving turbine:
h5=1168; //Btu/lbm at 50 psia 
//Leaving condenser:
h7=69.74; //Btu/lbm at 1 psia // is equal to h8 if pump work is neglected
//Leaving heater:
h1=250.24; //Btu/lbm at 50 psia //is equal to h2 if pump work is neglected(saturated liquid)
//A Heat balance around the heater gives
//W*h5 + (1-W)*h7 = 1*h1 
W=((1*h1)-h7)/(h5-h7); //Unit:lbm //W lb of steam 
printf("W=%f lbm\n",W);
work=(1-W)*(h4-922) + W*(h4-h5); //h5=922 from the mollier chart //Unit:Btu/lbm //The work output
printf("The work output is %f Btu/lbm\n",work);
//Heat into steam generator equals the enthalpy leaving minus the enthalpy of the saturated liquid entering at 50 psia:
qin=h4-h1; //Unit:Btu/lbm //Heat in
n=work/qin; //Efficiency of regenerative cycle
printf("The efficiency of regenerative cycle is %f percentage\n",n*100);
//The efficiency of a regenerative cycle with one open heater is given by 
n=1-(((h5-h1)*(h6-h7))/((h4-h1)*(h5-h7)));  //efficiency of a regenerative cycle
W=(h1-h7)/(h5-h7); //Unit:lbm  //W lb of steam
printf("When the rankine cycle is compared with regenerative cycle,\n");
printf("W=%f lbm and the efficiency of a regenerative cycle with one open heater is given by %f percentage\n",W,n*100);
