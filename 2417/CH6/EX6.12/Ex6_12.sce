clear;
clc;
printf("\t\t\tProblem Number 6.12\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.12 (page no. 255) 
// Solution

//The molecular weight of oxygen is 32.Therefore,
R=1545/32; //Unit:ft*lbf/lbm*R //constant of proportionality
J=778; //conversion factor
cp=0.24; //Unit:Btu/lbm*R //specific heat at constant pressure
//cp-cv=R/J
cv=cp-(R/J); //specific heat at constant volume //unit:Btu/lbm*R
printf("Specific heat at constant volume is %f Btu/lbm*R\n",cv);
