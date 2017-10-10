//Chapter 24: Space Wave Propagation
//Example 24-9.4
clc;

//Variable Initialization
gain = 10       //Antenna gain (dB)
Wt = 500         //Power radiation (W)
d = 15e3        //Distance (m)
Wr = 2e-6       //Received power (W)

//Calculations
Ae = Wr*(4*%pi*(d**2))/(Wt*gain)  //Effective area (m^2)

//Result
mprintf("The effective area of the receiving antenna is %.2f m^2", Ae)
