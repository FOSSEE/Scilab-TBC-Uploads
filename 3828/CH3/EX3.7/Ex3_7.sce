//Chapter 3 : Polarization

clear;

//Variable declaration
l=2                    //length of the tube
s=60                   //specific rotation
theta=12               //angle of rotation of plane vibration

//Calculations
C=theta/(l*s)*100

//Result
mprintf("The solution is of %d percent",C)
