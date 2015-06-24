//clear//
//Caption:Cut-off wavelength of photodiode
//Example6.1
//page224
clear;
clc;
close;
h = 6.625*(10^-34); //planks constant
C = 3*(10^8); //free space velocity
Eg = 1.43*1.6*(10^-19);//joules
LambdaC = h*C/Eg;
disp(LambdaC,'Cut-off Wavelength of photodiode in meters =')
//Result
//Cut-off Wavelength of photodiode in meters= 0.0000009 
