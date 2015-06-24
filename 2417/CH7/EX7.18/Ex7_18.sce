//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.18\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.18  (page no. 347) 
// Solution

//Problem 7.14 using the psychrometric chart
//In this problem,we are given the moisture content of the air to be 0.005 lb per pound of dry air.
//This corresponds to 0.005*7000=35 grains per pound of dry air.
//Entering the chart at 90F and proceeding verticaly to 35 grains per pound of dry air,we find the dew point to be 39F by proceeding horizontally to the intersection with the saturation curve. 
printf("The dew-point temperature of the mixture is 39 F\n");
printf("The relative humidity is approximately 17 percent\n");
//From the leftmost scale,we read the pressure of water vapor to be 0.12 psia.
printf("The partial pressure of the air is %f psia\n",14.7-0.12);
//Comparing these results to problem 7.14,indicated good agreement between the results obtained by chart and by calculation
