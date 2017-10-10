//Chapter 17: Antenna Temperature, Remote Sensing and Radar Cross Section
//Example 17-2.2
clc;

//Variable Initialization
phy_aper = 2208     //Physical aperture (m^2)
f = 1415e6          //Frequency (Hz)
aper_eff = 0.54     //Aperture efficiency (unitless)
Tsys = 50           //System temperature (K)
bw = 100e6          //RF Bandwidth (Hz)
t_const = 10         //Output time constant (s)
sys_const = 2.2     //System constant (unitless)
k = 1.38e-23        //Boltzmann's constant (J/K)

//Calculations
Tmin = sys_const*Tsys/(sqrt(bw*t_const))    //Minimum detectable temperature(K)
eff_aper = aper_eff*phy_aper        //Effective aperture (m^2)
Smin = 2*k*Tmin/eff_aper        //Minimum detectable flux density (W/m^2/Hz)

//Result
mprintf("The minimum detectable flux density is %.1e W/m^2/Hz" ,Smin)
