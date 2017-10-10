//Chapter 21: Antenna Measurements
//Example 21-2.1
clc;

//Variable Initialization
f = 900e6       //Frequency (Hz)
len = 25e-3  //Length of antenna (m)
len_cell = 110e-3   //Length of handset chassis (m)
c = 3e8         //Speed of light (m/s)
del_L = 0.5     //Peak to Peak measurement uncertainty (dB)

//Calculations
Dm = len + len_cell  //Maximum Dimension of antenna (m)
wave_lt = c/f           //Wavelength (m)
r_rnf = (wave_lt/(2*%pi))    //Outer boundary of reactive near field (m)
r_ff = 2*(Dm**2)/wave_lt    //Fraunhofer region (m)
r2_ff = r_rnf/(10**(del_L/40)-1)                //Minimum distance where effect of near field is small (m)
r3_ff = 2*Dm/(10**(del_L/10)-1)            //Minimum distance where effect of rotation of AUT is small (m)

//Result
mprintf( "The Outer boundary of reactive near field is at a distance %.3f m",r_rnf)
mprintf( "\nThe Fraunhofer region starts at a distance  %.3f m",r_ff)
mprintf( "\nThe Minimum distance where effect of near field is small enough is %.1f m",r2_ff)
mprintf( "\nThe Minimum distance where effect of rotation of AUT is small enough is %.1f m",r3_ff)
