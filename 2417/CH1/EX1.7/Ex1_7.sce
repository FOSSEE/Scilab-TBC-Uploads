//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 1.7\n\n\n");
// Chapter 1: Fundamental Concepts
// Problem 1.7 (page no. 33) 
// Solution

//The Specific gravity of mercury is 13.6 //Given
//Converting the unit of weight of grams per cubic centimeter to pounds per cubic foot
// 1 lbf=454 gram //1 inch= 2.54 cm
//So 1 gram=1/454 lbf and 1 ft=12*2.54 cm
//Gamma=(gram/cm^3)*(lb/gram)*(cm^3/ft^3)=lb/ft^3
//Gamma=(1 gram/cm^3)*(1 lbf/454 gram)*(2.54*12)^3 *cm^3/ft^3
Gamma=(1/454)*(2.54*12)^3; //lbf/ft^3 //conversion factor
disp(Gamma,"Conversion Factor=");
p=(1/12)*(Gamma*13.6); //lbf/ft^2 //gage pressure
p=(1/12)*Gamma*13.6*(1/144) //ft^2/inch^2 //gage pressure
printf("Guage Pressure is %f psi\n",p);
printf("Local atmospheric pressure is 14.7 psia\n");
P=p+14.7; //Pressure on the base of the column //Unit:psia
printf(" So Pressure on the base of the column is %f psia",P);

