clear;
clc;
printf("\t\t\tProblem Number 6.1\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.1 (page no. 241) 
// Solution

P1=100; //Pressure at volume V1=100 ft^3 //Unit:psia
V1=100; //Unit:ft^3 //V1=Volume at 100 psia
P2=30 // Reduced Pressure //Unit:psia
//Boyle's law,P1*V1=P2*V2
V2=(P1*V1)/P2; //Volume occupied by the gas //ft^3
printf("Volume occupied by the gas = %f ft^3",V2);
