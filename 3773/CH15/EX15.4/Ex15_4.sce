//Chapter 15: Antennas for Special Applications
//Example 15-13.1
clc;

//Variable Initialization
fre = 3e9  //Frequency (Hz)
Re_Zc = 14.4e-3 //Real part of intrinsic impedance of copper (ohm)
Zd = 377    //Intrinsic impedance of air (ohm)

//Calculation
tau = atan(Re_Zc/Zd)*180/%pi //Tilt angle (degrees)

//Result
mprintf("The tilt angle is %.4f degrees",tau)
