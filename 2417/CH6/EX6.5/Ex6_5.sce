clear;
clc;
printf("\t\t\tProblem Number 6.5\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.5 (page no. 242) 
// Solution

V1=4; //m^3 //initial volume
T2=0+273; //celsius converted to kelvin  //gas is cooled to 0 C //final temperature
T1=100+273; //celsius converted to kelvin //initial temperature
V2=V1*(T2/T1); //final volume //Charles's law(pressure constant) //unit:m^3
printf("The final volume is %f m^3",V2);
