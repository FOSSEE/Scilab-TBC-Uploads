//Chapter 24: Space Wave Propagation
//Example 24-12.1
clc;

//Variable Initialization
gain = 10       //Gain of transmitting antenna (dB)
P = 100         //Radiating power (W)
f = 1e6        //Frequency (Hz)
rx_gain = 15    //Gain of receiving antenna (dB)
d = 20e3        //Distance (m)
c = 3e8         //Speed of light (m/s)
v = 1000        //Scattering volume (m^3)
sigma = 0.1     //Effective scattering cross-section (m^2)

//Calculations
wl = c/f        //Wavelength (m)
Pr_a = P*gain*rx_gain*(wl**2)/(4*%pi*(4*%pi*(d**2)))                //Received power in case (a) (W)
F = (2*sqrt(sigma*v))/(d*sqrt(%pi))    //Attenuation Factor (unitless)
Pr_b = Pr_a*F   //Received power in case (b) (W)


//Result
mprintf("The received power in case (a) is %.5f W", Pr_a)
mprintf("\nThe received power in case (b) is %e W", Pr_b)
