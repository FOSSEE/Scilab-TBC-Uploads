//Chapter 2: Antenna Basics
//Example 2-17.1
clc;

//Variable Initialization
AR_w = 4          //Axial Ratio for left elliptically polarized wave (unitless)
tau_w = 15        //Tilt angle for left elliptically polarized wave (degrees)
AR_a = -2         //Axial Ratio for right elliptically polarized wave (unitless)  
tau_a = 45        //Tilt angle for right elliptically polarized wave (degrees)
tau_w2 = 20.7     //2*Tilt angle for left elliptically polarized wave (degrees)    
tau_a2 = 39.3     //2*Tilt angle for right elliptically polarized wave (degrees)

//Calculation
eps_a2 = 2*atan(1,AR_a)*180/%pi  //Polarisation latitude (degrees)
eps_w2 = 2*atan(1,AR_w)*180/%pi   //Antenna latitude (degrees)
gamma_w2 =acos(cos(eps_w2*%pi/180)*cos(tau_w2*%pi/180))       //great-circle angle - antenna (radians)
gamma_a2 =acos(cos(eps_a2*%pi/180)*cos(tau_a2*%pi/180))  //great-circle angle - wave (radians)
M_Ma = (gamma_w2*180/%pi) + (gamma_a2*180/%pi)            //total great-circle angle (degrees)
F = cos((M_Ma/2)*%pi/180)**2        //Polarisation matching factor (relative quantity)

//Result
mprintf("The polarization matching factor is %.2f",F)
