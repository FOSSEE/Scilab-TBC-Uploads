//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.11\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.11  (page no. 521) 
// Solution

printf("Solution for (a)\n");
//From appendix3,reading the p-h diagram directly,we have
h3=76.2; //Unit:Btu/lbm //Enthalpy
h4=100.5; //Unit:Btu/lbm //Enthalpy
n=0.8; //Efficiency //From 10.10
work=(h4-h3)/n; //Work of compression //Unit:Btu/lbm
//The enthalpy of saturated liquid at 100 psia is given at 26.1 Btu/lbm.Proceeding as before yields
m=(200*5)/(h3-26.1); //Unit:lbm/min //m=massflow/min
J=778; //J=Conversion factor
totalwork=(m*work*J)/33000; //1 horsepower = 33,000 ft*LBf/min //total ideal work //unit:hp
printf("Total ideal work of compression is %f hp\n\n",totalwork);

printf("Solution for (b)\n");
h4dash=h3+work; //Btu/lbm
mdot=(m*(h4dash-26.5))/(70-60); //water enters at 60F and leaves at 70F //the required capacity in lbm/min
printf("%f lbm/min of cooling water i.e. %f gal/min is the required capacity of cooling water to pump",mdot,mdot/8.3);
