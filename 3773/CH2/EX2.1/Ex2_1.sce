//Chapter 2: Antenna Basics
//Example 2-3.1
clc;

//Variable Initialization
e_half_power = 1/sqrt(2)    //E(theta) at half power (relative quantity)

//Calculation
theta = acos(sqrt(e_half_power)) // theta (radians)
hpbw = 2*theta*180/%pi     // Half power beamwidth (degrees)

//Result
mprintf("The Half Power Beamwidth is %.0f degrees",hpbw)
