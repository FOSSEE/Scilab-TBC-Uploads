//Chapter 3: The Antenna Family
//Example 3-6.1
clc;

//Variable Initialization
L = 10              //Horn length (lambda)
delta = 0.25        //Path length difference (lambda)

//Calculation
theta = 2*acos(L/(L+delta))    //Horn flare angle (radians)
theta = theta*180/%pi           //Horn flare angle (degrees)

//Result
mprintf("The largest flare angle for given delta is %.1f degrees",theta)
