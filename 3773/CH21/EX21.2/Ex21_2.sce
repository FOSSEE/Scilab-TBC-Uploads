//Chapter 21: Antenna Measurements
//Example 21-2.2
clc;

//Variable Initialization
horn_len = 350e-3   //Length of horn (m)
ap_wid = 200e-3     //Aperture width (m)
ap_hei = 150e-3     //Aperture height (m)
del_L = 0.2         //Peak to peak uncertainty (dB)
f = 10e9            //Frequency (Hz)
c = 3e8             //Speed of light (m/s)

//Calculations
wave_lt = c/f       //Wavelength (m)
r_rnf = wave_lt/(2*%pi)  ////Outer boundary of reactive near field (m)
r_ff = 2*(ap_wid**2)/wave_lt    //Fraunhofer region (m)
r2_ff = r_rnf/(10**(del_L/40)-1)            //Minimum distance where effect of near field is small (m)
r3_ff = 2*horn_len/(10**(del_L/10)-1)            //Minimum distance where effect of rotation of AUT is small (m)

//Result
mprintf( "The Outer boundary of reactive near field is at a distance %.4f m",r_rnf)
mprintf( "\nThe Fraunhofer region starts at a distance %.1f m",r_ff)
mprintf( "\nThe Minimum distance where effect of near field is small enough is %.2f m",r2_ff)
mprintf( "\nThe Minimum distance where effect of rotation of AUT is small enough is %.1f m", r3_ff)
