//Chapter 17: Antenna Temperature, Remote Sensing and Radar Cross Section
//Example 17-4.1
clc;

//Variable Initialization
tf = 0.693      //Absorption co-efficient (unitless)
Te = 305        //Earth temperature (K)
Ta = 300        //Satellite antenna temperature (K)

//Calculations
Tf = (Ta - Te*exp(-tf))/(1-exp(-tf))

//Result
mprintf("The forest temperature is %.0f K", Tf)
