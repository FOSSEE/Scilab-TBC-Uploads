//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.19\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.19  (page no. 348) 
// Solution

//Problem 7.16 using the psychrometric chart
//The initial conditions are 90 F and 70% relative humidity
//Entering the chart at 90 F dry bulb temperature and proceeding vertically to 70% relative humidity,we find the air to have 150 grains water vapor per pound of dry air.At the final condition of 80F and 40% relative humidity,we read 61 grains of water/lb of dry air.
//So,
printf("The water removed is %f grains per pound of dry air\n",150-61);
printf("Or %f lb of water per pound of dry air is removed\n",(150-61)/7000);
