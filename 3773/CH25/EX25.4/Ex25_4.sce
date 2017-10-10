//Chapter 25: Sky Wave Propagation
//Example 25-6.1
clc;

//Variable Initialization
hD = 70     //Height of D layer (km)
hE = 130     //Height of E layer (km)
hF1 = 230     //Height of F1 layer (km)
hF2 = 350     //Height of F2 layer (km)
theta = 10*%pi/180      //Angle of incidence (radians)

//Calculations
temp = sqrt((cos(theta))**-2 - 1)
d1 = 2*hD*temp  //Maximum single hop distance for D layer (km)
d2 = 2*hE*temp  //Maximum single hop distance for E layer (km)
d3 = 2*hF1*temp //Maximum single hop distance for F1 layer (km)
d4 = 2*hF2*temp //Maximum single hop distance for F2 layer (km)

//Result
mprintf( "The Maximum single hop distance for D layer is %.1f km", d1)
mprintf( "\nThe Maximum single hop distance for E layer is %.2f km", d2)
mprintf( "\nThe Maximum single hop distance for F1 layer is %.2f km", d3)
mprintf( "\nThe Maximum single hop distance for F2 layer is %.1f km", d4)
