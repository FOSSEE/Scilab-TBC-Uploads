//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 1.9\n\n\n");
// Chapter 1: Fundamental Concepts
// Problem 1.9 (page no. 34) 
// Solution

//Given
Patm=30.0; //in. //pressure of mercury at standard temperature
Vacuum=26.5;  //in.  //vaccum pressure
Pabs=Patm-Vacuum; //Absolute pressure of mercury //in.
// 1 inch mercury exerts a pressure of 0.491 psi
p=Pabs*0.491; //Absolute pressure in psia
printf("Absolute pressure of mercury in is %f psia",p);

