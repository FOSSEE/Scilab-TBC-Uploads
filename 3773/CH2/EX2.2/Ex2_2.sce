//Chapter 2: Antenna Basics
//Example 2-3.2
clc;

//Variable Initialization
e_half_power = 1/sqrt(2)   //E(theta) at half power(unitless)
e_null = 0      //E(theta) = 0 at null points (unitless)
theta_1 = 0     //theta' (degrees)
theta = 1       //theta (degrees)

//Calculation
for x=0:2      //loop untill theta = i
theta = 0.5*acos(e_half_power/cos(theta_1*%pi/180))                          //theta(radian)
theta_1 = theta*180/%pi       //theta(degrees)
end

hpbw = 2*(theta*180/%pi)    //Half-power beamwidth (Degrees)
theta = 0.5*acos(e_null)   //theta (radians)
fnbw = 2*(theta*180/%pi)    //Beamwidth between first null (degrees)

//Result
mprintf("The half power beamwidth is %.2f degrees",hpbw)
mprintf("\nThe beamwidth between first nulls is %d degrees", fnbw)

