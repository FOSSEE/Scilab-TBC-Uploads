//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.10\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.10  (page no. 470) 
// Solution

//For four cycle,six cylinder engine,
//Using the results of problem 9.5,
hp=100; //Horsepower //Unit:hp
L=4/12; //Unit:ft //stroke is 4 in.
A=(%pi/4)*(3)^2*6; //Cylinder bore is 3 in.
N=4000/2; //Power strokes per minute //2L engine //Unit:rpm
//hp=(pm*LA*N)/33000;
pm=(hp*33000)/(L*A*N); //The mean effective pressure //psia
printf("The mean effective pressure is %f psia",pm);
