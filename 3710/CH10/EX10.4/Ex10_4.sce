//Example 10.4, Page Number 509
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Sagnac Gyroscope Phase Shift
clc;
n=1000 //Turns on the Fibre
r=0.1 //Radius in meter
r2=15 //Earth's rotation rate per hour
c=3*(10**8) //Speed of light in meters per second
l=1*(10**-6) //Wavelength in meter
r1=(r2*%pi)/(180*3600) //Conversion to radian per second

theta=(8*%pi*n*%pi*(r**2)*r1)/(l*c) //theta is the phase shift
theta=fpround(theta,5)

mprintf("The Phase Shift in Sagnac Gyroscope is:%0.1e radian",theta);
