// To find percentage error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 12-1 in Page 360


clear; clc; close;

// Given data
R = 1; //Resistance of the wire in ohm
R_L = 10*10^3; //Load resistance in ohm
I_supply = 50*10^-3; //power supply current in A
V_out = 1; //output of the amplifier in V

//Calculations
V_L = (V_out+(I_supply*R))*R_L/(2*R+R_L);
printf("The load voltage calculated = %0.2f\n",V_L);

%error = ceil((V_L -V_out)/V_L*100);
printf("The percentage error is about %d %%, which is unacceptable in most systems",%error);

//Result
// The load voltage calculated = 1.05
// The percentage error is about 5 %, which is unacceptable in most systems 



