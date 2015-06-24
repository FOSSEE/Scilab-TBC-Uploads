clear;
clc;
disp('Example 1.13');



//  Given values
V = 230; // Voltage, [volts]
W = 4; //  Power of heater, [kW]

//  solution

//  using equation P=VI
I = W/V; //  current, [K amps]
mprintf('\n The current taken by heater is  =  %f  amps \n',I*10^3);

//  End
