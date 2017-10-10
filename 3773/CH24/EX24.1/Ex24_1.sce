//Chapter 24: Space Wave Propagation
//Example 24-9.1
clc;

//Variable Initialization
tx_h = 49.0       //Transmitting antenna height (m)
rx_h = 25.0       //Receiving antenna height (m)
f = 100e6       //Frequency (Hz)
tx_p = 100.0      //Transmitted power (W)
c = 3e8         //Speed of light (m/s)
a = 6370        //Earth's radius (km)

//Calculation
wave_lt = c/f   //Wavelength (m)
d0 = sqrt(2*(4.0/3.0)*(a/1000.0))*(sqrt(tx_h)+sqrt(rx_h))                //Line of Sight (LOS) distance (km)
d = d0*1000     //LOS (m)
Er = (88*sqrt(tx_p)/(wave_lt*(d**2)))*tx_h*rx_h                //Received signal strength (W)

//Result
mprintf( "The Line of Sight distance is %.2f km",d0)
mprintf( "\nThe Received Signal strength is %.6f W", Er)



//There is an error in the calculation of (88*sqrt(tx_p)/(wave_lt*(d**2))) where four orders of magnitude are ignored in the resulting calculation.
