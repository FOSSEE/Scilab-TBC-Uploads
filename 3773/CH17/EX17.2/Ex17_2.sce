//Chapter 17: Antenna Temperature, Remote Sensing and Radar Cross Section
//Example 17-1.2
clc;

//Variable Initialization
eff_aper = 500      //Antenna effective aperture (m^2)
wave_lt = 20e-2        //Wavelength (m)
Tsky = 10.0           //Sky temperature (K)
Tgnd = 300.0          //Ground temperature (K)
beam_eff = 0.7      //Beam efficiency (unitless)
aper_eff = 0.5      //Aperture efficiency (unitless)

//Calculations
phy_aper = aper_eff/eff_aper    //Physical aperture (m^2)
diam = 2*sqrt(phy_aper/%pi)  //Antenna diameter (m)
diam_l = diam/wave_lt       //Antenna diameter (lambda)

ta_sky = Tsky*beam_eff      //Sky contribution to antenna temp. (K)
ta_side = 0.5*Tsky*(1-beam_eff) //Side-lobe contribution to antenna temp. (K)
ta_back = 0.5*Tgnd*(1-beam_eff) //Back-lobe contribution to antenna temp. (K)

Ta = ta_sky + ta_side + ta_back

//Result
mprintf("The total antenna temperature is %.1f K", Ta)
