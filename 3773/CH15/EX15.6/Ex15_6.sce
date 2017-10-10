//Chapter 15: Antennas for Special Applications
//Example 15-13.3
clc;

//Variable Initialization
lambda_g = 1.5      //Wavelength in guide (lambda)
m = -1  //Mode number

//Calculation
phi = acos((1/lambda_g)+m)*180/%pi //Forward tilt angle (degrees)

//Result
mprintf("The beam angle is %.1f degrees",phi)
