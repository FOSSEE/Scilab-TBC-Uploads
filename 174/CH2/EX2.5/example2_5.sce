// To convert speed limit to a different unit
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 2-5 in Page 30

clear; clc; close;

// Given data
speed_km = 60; // speed limit in km/hr

//Calculations
speed_m = 60 *10^3 *10^2 *(1/2.54) *(1/12)*(1/5280);
speed_ft = 37.3 *5280 *(1/(3.6*10^3));

printf("(a)  The speed limit in m/hr = %0.1f mi/hr\n",speed_m);
printf("(b)  The speed limit in ft/s = %0.1f ft/s",speed_ft);

//Result
// (a)  The speed limit in m/hr = 37.3 mi/hr
// (b)  The speed limit in ft/s = 54.7 ft/s 


//The answer given in textbook is printed incorrectly and does not match with calculated answer


