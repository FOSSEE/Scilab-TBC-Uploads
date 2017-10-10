//Chapter 24: Space Wave Propagation
//Example 24-9.3
clc;

//Variable Initialization
tx_h = 100      //Transmitting antenna height (m)
rx_h = 16       //Receiving antenna height (m)
tx_p = 40e3     //Transmitting antenna power radiation (W)
f = 100e6       //Frequency (Hz)
d = 10e3        //Distance (m)
c = 3e8         //Speed of light (m/s)
E = 1e-3        //Signal strength (V/m)

//Calculations
los = 4.12*(sqrt(tx_h) + sqrt(rx_h))    //LOS distance (km)
wave_lt = c/f       //Wavelength (m)

Es = (88*sqrt(tx_p)/(wave_lt*(d**2)))*tx_h*rx_h                    //Field strength at distance d (V/m)

dsig = sqrt(88*sqrt(tx_p)*tx_h*rx_h/(wave_lt*E))    //Distance at which field strength reduces to 1mV/m

//Result
mprintf( "The LOS distance is %.2f km", los)
mprintf( "\nThe field strength at 10km is %.5f V/m", Es)
mprintf( "\nThe distance at which field strength is 1mV/m is %.d m",dsig)
