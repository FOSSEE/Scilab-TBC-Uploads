clear;
clc;
printf("\t\t\tProblem Number 6.37\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.37 (page no. 288) 
// Solution

T=200+460; //Fahrenheit temperature converted to absolute temperature //unit:R
V=1500; //ft/s //the local velocity
Va=49.0*sqrt(T); //velocity of sound air at 200 F  //unit:ft/s
printf("The velocity of sound air at 200 F is %f ft/s\n",Va);
M=V/Va; //The Mach number=the local velocity/velocity of sound //unitless
printf("The Mach number is %f\n",M);
