//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.7\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.7  (page no. 468) 
// Solution

//For four cycle engine,
//Using the results of problem 9.6,
pm=1000; //Unit:kPa //mean effective pressure //Unit:psia
N=4000/2; //Power strokes per minute //2L engine //Unit:rpm
LA=2 //Mean //Unit:liters
hp=(pm*LA*N)/44760; //The horsepower //Unit:hp
printf("The horsepower is %f hp",hp);
