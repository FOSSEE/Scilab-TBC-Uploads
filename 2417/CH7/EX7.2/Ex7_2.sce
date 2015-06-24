//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.2\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.2  (page no. 323) 
// Solution

//For Gaseous Freon-12 (CCl2F2)
//MW of air=29 & MW of freon-12=120.9
//initial pressure in tank is atmospheric pressure that is 14.7 psia
//final pressure of tank is 1000 psia
//The partial pressure of the Freon-12 is 1000-14.7
printf("The partial pressure of the Freon-12 is %f\n",1000-14.7)
//the mole fraction of air=the initial pressure / final pressure
printf("The mole fraction of air is %f\n",14.7/1000)
//the mole fraction of freon=the partial pressure of freon / the final pressure
printf("The mole fraction of Freon-12 is %f\n",(1000-14.7)/1000)
MWm=((14.7/1000)*29) + (((1000-14.7)/1000)*120.9);//the molecular weight of mixture=sum of products of mole fraction of each gas component 
printf("The molecular weight of the mixture is %f",MWm);
