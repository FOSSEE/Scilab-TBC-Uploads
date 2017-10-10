//Chapter 17: Antenna Temperature, Remote Sensing and Radar Cross Section
//Example 17-1.1
clc;

//Variable Initialization
Ta = 0.24   //Antenna temperature (K)
ang = 0.005     //Subtended angle (degrees)
hpbw = 0.116    //Antenna half power beamwidth (degrees)

//Calculations
Ts = Ta*(hpbw**2)/(%pi*(ang**2/4))

//Result
mprintf("The average temperature of the surface is %d K", Ts)
