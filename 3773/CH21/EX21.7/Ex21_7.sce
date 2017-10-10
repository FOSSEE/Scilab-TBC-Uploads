//Chapter 21: Antenna Measurements
//Example 21-5.2
clc;

//Variable Initialization
f = 1.4e9       //Frequency (Hz)
Tant = 687      //Increase in antenna temperature (K)
phy_ap = 2210   //Physical aperture (m^2)
S = 1590        //Flux density of Cygnus A (Jy)
k = 1.38e-23    //Boltzmann's constant (J/k)
c = 3e8         //Speed of light (m/s)

//Calculations
wave_lt = c/f       //Wavelength (m)
gain = (8*%pi*k*Tant)/(S*(10**-26)*wave_lt**2)   //Gain(unitless)
gain_db = 10*log10(gain)       //Gain (dBi)
Ae = gain*wave_lt**2/(4*%pi)     //Effective area (m^2)
eff_ap = Ae/phy_ap          //Aperture efficiency (unitless)

//Result
mprintf("The gain of the antenna is %d dBi", gain_db)
mprintf("\nThe aperture efficiency is %.2f or %.1f percent",eff_ap,eff_ap*100)
