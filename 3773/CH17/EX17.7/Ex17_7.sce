//Chapter 17: Antenna Temperature, Remote Sensing and Radar Cross Section
//Example 17-5.1
clc;

//Variable Initialization
f = 10e9        //Frequency (Hz)
wind_speed = 350    //Wind speed (km/h)
c = 3e8         //Speed of light (m/s)
vr = 1e3          //Differential velocity (m/h)

//Calculations
wave_lt = c/f   //Wavelength (m)
freq_shift = 2*(wind_speed*1000/3600)/wave_lt                       //Doppler Frequency shift (Hz)
T = 1/(2*freq_shift)    //Pulse repetition interval (s)
prf = 1/T           //Pulse repetition frequency (Hz)

fmin = 2*(vr/3600)/wave_lt  //Frequency resolution (Hz)
N = 1/((fmin)*T)      //Number of pulses 

//Result
mprintf("The minimum pulse repetition frequency is %d Hz",prf)
mprintf("\nThe number of pulses to be sampled is %d", N)

