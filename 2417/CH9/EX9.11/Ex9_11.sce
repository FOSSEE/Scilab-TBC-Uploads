//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.11\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.11  (page no. 470) 
// Solution

//six cylinder engine,with displacement 3.3L
//Using the results of problem 9.5,
hp=230; //Horsepower //Unit:hp
//3.3L*1000 cm^3/L*(in/2.54 cm)^3
LA=3.3*1000*(1/2.54)^3; //mean //in^3
N=5500/2; //Power strokes per minute //2L engine //Unit:rpm
//hp=(pm*LA*N)/33000;
pm=(hp*33000*12)/(LA*N); //1ft=12inch //The mean effective pressure //psia
printf("The mean effective pressure is %f psia",pm);
