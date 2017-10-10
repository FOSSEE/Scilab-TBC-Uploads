//Chapter 24: Space Wave Propagation
//Example 24-9.2
clc;

//Variable Initialization
tx_h = 144      //Transmitting antenna height (m)
rx_h = 25       //Receiving antenna height (m)
k = 4.0/3.0         //Equivalent earth radius/Actual earth radius (unitless)
a = 6370        //Radius of earth (km)

//Calculations
los = 4.12*(sqrt(tx_h) + sqrt(rx_h))    //Line of sight distance (km)
horz = sqrt(2*k*a*(tx_h/1000.0))  //Surface range to radio horizon from radar (km)

//Result
mprintf("The Radio horizon distance from radar is %.2f km",horz)
