//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.14\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.14  (page no. 426) 
// Solution

//From problem 8.11,
//Leaving turbine:
h5=1168; //Btu/lbm at 50 psia 
//For the rankine cycle,the Mollier chart gives
h4=1505; //Enthalpy //Unit:Btu/lbm
h6=922; //Enthalpy //Unit:Btu/lbm //h6=h5;
//and at the condenser,
h1=69.74; //enthalpy //Unit:Btu/lbm
//Leaving condenser:
h7=69.74; //Btu/lbm at 1 psia // is equal to h8 if pump work is neglected
//Leaving heater:
h2=250.24; //Btu/lbm at 50 psia //is equal to h1 if pump work is neglected(saturated liquid)
//A Heat balance around the heater gives
//W*h5 + (1-W)*h7 = 1*h1 
W=((1*h2)-h7)/(h5-h7); //Unit:lbm
liquidleaving=(W*h2)+(1-W)*h1; //Btu/lbm //liquid leaving the heatexchange

//Using these data,,
heatin=h4-liquidleaving; //Btu/lbm //heat in the boiler
printf("Heat in at boiler is %f Btu/lbm\n",heatin);
workout=((1-W)*(h4-h6))+(W*(h4-h5)); //Btu/lbm //The work out of turbine
printf("The work out of turbine is %f Btu/lbm\n",workout);
n=workout/heatin; //efficiency //The conventional thermal efficiency
printf("The conventional thermal efficiency is %f percentage\n",n*100);
//If at this time we have define the efficiency of energy utilization to be the ratio of the work out plus the useful heat out divided by the heat input to the    cycle, nenergyutilization=((w+qoutuseful)/qin)*100
qout=W*(h5-h2); //heat out //Btu/lbm
n=(workout+qout)/heatin; //efficiency of energy utilization
printf("Efficiency of energy utilization is %f percentage\n",n*100);
//Comparing with 8.11, we see that conventional thermal efficiency is decreased and efficiency of energy utilization is increased
