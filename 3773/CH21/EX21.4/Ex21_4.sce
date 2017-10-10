//Chapter 21: Antenna Measurements
//Example 21-4.1
clc;

//Variable Initialization
D = 1       //Diameter of antenna (m)
f = 10e9    //Frequency (Hz)
c = 3e8     //Speed of light (m/s)

//Calculations
wave_lt = c/f       //Wavelength (m)
hpbw = 70*wave_lt/D //Half power beamwidth (degrees)
mea_dist = 2*(D**2)/wave_lt //Measurement distance (m)
trav_dist = hpbw*%pi*mea_dist/180    //Traverse distance (m)
taper = ((0.5/(trav_dist/2))**2)*(-3) //Amplitude taper (dB)

//Result
mprintf("The amplitude taper is %.1f dB", taper)
