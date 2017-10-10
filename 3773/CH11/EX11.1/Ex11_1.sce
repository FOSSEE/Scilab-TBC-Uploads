//Chapter 11: Broadband and Frequency-Independent Antennas
//Example 11-1.1
clc;

//Variable Initialization
d = 4       //spacing (mm)
D = 100     //distance between the openings (mm)

//Calculation
lambda_short = 10*d     //Shortest wavelength (mm)
lambda_long = 2*D       //Longest wavelength (mm)
bandwidth = lambda_long/lambda_short    //Bandwidth (unitless)

//Result
mprintf("The approximate bandwidth is %d to 1", bandwidth)
