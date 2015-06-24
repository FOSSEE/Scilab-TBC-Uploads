//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 8.12\n\n\n");
// Chapter 8 : Vapor Power Cycles
// Problem 8.12  (page no. 396) 
// Solution

//Figure 8.16(a) shows the cycle.For this cycle,W2 pounds are extracted at 100 psia,and W1 pounds are extracted at 50 psia for each pound produced by the steam generator.The enthalpies that  are required are:
//Leaving turbine: 922 //Btu/lbm at 1 psia
//Leaving condenser: 69.74 //Btu/lbm at 1 psia (saturated liquid)
//Leaving low pressure heater: 250.24 //Btu/lbm at 50 psia (saturated liquid)
//Leaving high pressure heater: 298.61 //Btu/lbm at 100 psia
//At low pressure extraction: 1168 //Btu/lbm at 50 psia
//At high pressure extraction: 1228.6 //Btulbm at 100 psia
//Entering turbine: 1505 //Btu/lbm
//The heat balance around the high pressure heater gives us
//W2*1228.6 + (1-W2)*250.24 = 1*298.61
W2=((1*298.61)-250.24)/(1228.6-250.24); //lbm //W2 pounds are extracted at 100 psia
printf("W2=%f lbm\n",W2);
//A heat balance around the low pressure heater yields
//W1*1168 + (1-W1-W2)*69.74 = (1-W2)*250.24
W1=(((1-W2)*250.24)-69.74+(W2*69.74))/(1168-69.74); //lbm //W1 pounds are extracted at 50 psia
printf("W1=%f lbm\n",W1);
work=((1505-1228.6)*1)+((1-W2)*(1228.6-1168))+((1-W1-W2)*(1168-922)); //The work output //Btu/lbm
printf("The work output is %f Btu/lbm\n",work);
//Heat into the steam generator equals the enthalpy leaving minus the enthalpy of saturated liquid at 100 psia:
qin=1505-298.61; //Btu/lbm //Heat in 
printf("Heat in = %f Btu/lbm\n",qin);
n=work/qin; //The efficiency
printf("The efficiency is %f percentage\n",n*100);
//In terms of figure 8.16a,
//W2=(h1-h11)/(h5-h11)
//W1=(h5-h1/h6-h9)*(h10-h9/h5-h10) neglecting the pump work
//n=1-(h7-h8/h4-h1)*(h5-h1/h5-h10)*(h6-h10/h6-h8)
//For this problem , h8=h9 , h10=h11 and h1=h2.Thus
W2=(298.61-250.24)/(1228.6-250.24); //lbm //W2 pounds are extracted at 100 psia
printf("Comparing the results,\n");
printf("W2=%f lbm\n",W2);
W1=((1228.6-298.61)*(250.24-69.74))/((1168-69.74)*(1228.6-250.24)); //lbm //W1 pounds are extracted at 50 psia
printf("W1=%f lbm\n",W1); 
n=1-(((922-69.74)*(1228.6-298.61)*(1168-250.24))/((1505-298.61)*(1228.6-250.24)*(1168-69.74))); //Efficiency
printf("The efficiency is %f percentage\n",n*100);
