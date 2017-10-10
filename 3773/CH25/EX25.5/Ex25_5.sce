//Chapter 25: Sky Wave Propagation
//Example 25-9.1
clc;
clear;

//Variable Initialization
d = 200     //Height of layer (km)
bet = 20    //Takeoff angle (degrees)
R = 6370    //Earth's radius (km)

//Calculations
phi_0 = 90 - bet   //Take off angle for flat earth (degrees)
h = (d/2)/(sqrt((cos(phi_0*%pi/180)**-2) - 1))    //Skip distance for case (a) (km)

phi_02 = 90 - bet - 57.2*d/(2*R)                    //Take off angle for spherical earth (degrees)
h2 = (d/2)/(sqrt((cos(phi_02*%pi/180)**-2) - 1))                   //Skip distance for case (b) (km)

//Result
mprintf("The skip distance for case (a) is %.3f km", h)
mprintf("\nThe skip distance for case (b) is %.2f km", h2)
