clear;
clc;
printf("\t\t\tProblem Number 6.36\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.36 (page no. 288) 
// Solution

T=1000+460; //Fahrenheit temperature converted to absolute temperature
//The velocity of sound in air at 1000 F is
Va=49.0*sqrt(T); //velocity //ft/s
printf("The velocity of sound air at 1000 F is %f ft/s\n",Va);
//Hydrogen has a specific heat ratio of 1.41 and R=766.53.Therefore,
khydrogen=1.41; //specific heats ratio for air
kair=1.40; //specific heats ratio for air
Rhydrogen=766.53; //gas constant //ft*lbf/lbm*R
Rair=53.36; //gas constant //ft*lbf/lbm*R
// Vahydrogen/Vaair = sqrt((Rhydrogen*khydrogen)/(Rair*kair))
//rearranging,
Vahydrogen=Va*sqrt((Rhydrogen*khydrogen)/(Rair*kair)); //The velocity of sound in hydrogen at 1000 F //unit:ft/s
printf("The velocity of sound in hydrogen at 1000 F is %f ft/s\n",Vahydrogen);
