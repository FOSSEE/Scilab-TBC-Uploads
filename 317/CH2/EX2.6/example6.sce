
// Example 2-6, page 51

clear;clc; close;

// Given data
I(1)=5;// saturation current at given temperature in nano amperes
T(1)=25;// temperature in degree celcius at which saturation current is known
T(2)=100;// temperature in degree celcius at which saturation current is to be found

// Calculations
I(2)=(2^7)*I(1);// 7 doublings between 25 and 95 degree celcius
I(3)=((1.07)^5)*I(2); // additional 5 degree between 95 and 100 degree celcius
disp("Amperes",I(3),"Saturation Current =")

// Result
// saturation current at 100 degree celcius is 898 nano amperes.
