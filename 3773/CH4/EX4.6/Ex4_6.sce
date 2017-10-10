//Chapter 4: Radiation
//Example 4-6.1
clc;

//Variable Initialization
Im = 5              //Maximum current (A)
r = 1e3             //Distance (km)
eta = 120*%pi   //Intrinsic impedance (ohm)
theta = 60*%pi/180          //Angle of radiation (radians)

//Calculation
sin2 = sin(theta)**2       //Sine squared theta (unitless)
P_av = (eta*(Im**2))/(8*(%pi**2)*(r**2))
P_av = P_av*(cos(%pi/2*cos(theta))**2)/(sin2)                        //Average power (W)

//Result
mprintf("The average power available at 1km distance is %e W",P_av)
