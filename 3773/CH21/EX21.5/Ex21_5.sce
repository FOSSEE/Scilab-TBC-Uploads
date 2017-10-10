//Chapter 21: Antenna Measurements
//Example 21-4.2
clc;

//Variable Initialization
pat_lev1 = -22.3    //Pattern level maximum (dB)
pat_lev2 = -23.7    //Pattern level minimum (dB)

//Calculations
S = abs(pat_lev2-pat_lev1)  //Amplitude ripple (dB)
a = (pat_lev1+pat_lev2)/2   //Pattern level (dB)

R = a + 20*log10((10**(S/20) - 1)/(10**(S/20) + 1))                    //Reflectivity (dB)

//Result
mprintf("The reflectivity is %.1f dB", R)
