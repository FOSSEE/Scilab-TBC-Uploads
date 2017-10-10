//Chapter 23: Ground Wave Propagation
//Example 23-2.2
clc;

//Variable Initialization
f = 10e6        //Frequency (Hz)
sigma = 5       //Standard deviation of surface irregularities (unitless)
theta1 = 30      //Angle of incidence as measured from normal angle (degrees)
theta2 = 45      //Angle of incidence as measured from normal angle (degrees)
theta3 = 60      //Angle of incidence as measured from normal angle (degrees)
c = 3e8         //Speed of light (m/s)

//Calculations
wave_lt = c/f       //Wavelength (m)
R1 = 4*%pi*sigma*sin(theta1*%pi/180)/wave_lt              //Roughness factor for theta1 (unitless)
R2 = 4*%pi*sigma*sin(theta2*%pi/180)/wave_lt            //Roughness factor for theta2 (unitless)
R3 = 4*%pi*sigma*sin(theta3*%pi/180)/wave_lt            //Roughness factor for theta3 (unitless)

//Result
mprintf( "The roughness factor for 30 degrees is %.4f", R1)
mprintf( "\nThe roughness factor for 45 degrees is %.3f", R2)
mprintf( "\nThe roughness factor for 60 degrees is %.4f", R3)
