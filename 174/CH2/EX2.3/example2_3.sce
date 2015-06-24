// To convert velocity to a different unit
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 2-3 in Page 29

clear; clc; close;

// Given data
c_s = 2.997925 * 10^8; // velocity in m/s

//Calculations
c_hr = 2.997925 *10^8* 1/10^3* 3.6*10^3; // velocity in km/hr
printf("The velocity of light in km/hr = %0.3e km/hr",c_hr);

//Result 
// The velocity of light in km/hr = 1.079e+009 km/hr 