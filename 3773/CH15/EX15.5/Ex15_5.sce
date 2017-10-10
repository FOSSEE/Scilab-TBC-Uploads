//Chapter 15: Antennas for Special Applications
//Example 15-13.2
clc;

//Variable Initialization
fre = 3e9  //Frequency (Hz)
eps_r = 80  //Relative permittivity of water (unitless)

//Calculation
tau = atan(1/sqrt(eps_r))*180/%pi //Forward Tilt angle (degrees)

//Result
mprintf("The forward tilt angle is %.1f degrees",tau)
