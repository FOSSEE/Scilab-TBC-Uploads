//Chapter 3 : Polarization

clear;

//Variable declaration
theta=(60*%pi/180)                //angle in radians

//Calculations
Intensityred=100-(1-cos(theta)**2)*100

//Result
mprintf("Percentage of light that passes through = %d percent",Intensityred)
