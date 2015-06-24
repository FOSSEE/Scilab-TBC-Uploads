clear;
clc;
printf("\t\t\tProblem Number 6.2\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.2 (page no. 241) 
// Solution

P1=10^6; //Pressure at volume V1=2 m^3 //Unit:Pa
V1=2; //Unit:m^3 //V1=Volume at 10^6 Pa
P2=8*10^6 // Increased Pressure //Unit:Pa
//Boyle's law,P1*V1=P2*V2
V2=(P1*V1)/P2; //Volume occupied by gas //unit:m^3
printf("Volume occupied by gas = %f m^3",V2);
