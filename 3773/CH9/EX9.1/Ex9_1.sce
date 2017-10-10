//Chapter 9: Reflector Antennas
//Example 9-2.1
clc;

//Variable Initialization
P_transmit = 25000.0      //Power transmitted by station transmitter (W)
gain_dbi = 29.0           //Gain of array (dBi)
r = 7500e3                //Distance (m)
h = 250e3                 //Height (m)
z = 377.0                 //Intrinsic impedance of free space (ohm)

//Calculation
gain = 10**(gain_dbi/10)    //Gain of array (unitless)
erp = gain*P_transmit       //Effective radiated power (W)
p_area = erp/(2*%pi*r*h)     //Power per unit area at distance r (W/m^2)
field_str = sqrt(p_area*z)    //Field strength (mV/m)

//Result
disp(erp,"The effective radiated power in W")
mprintf("\nThe field strength at the distance r is %.3f V/m^2",field_str)
