//Chapter 17: Antenna Temperature, Remote Sensing and Radar Cross Section
//Example 17-3.1
clc;

//Variable Initialization
k = 1.38e-23    //Boltzmann's constant (J/K)
trans_pow = 5   //Transponder power (W)
r = 36000e3     //Distance (m)
wave_lt = 7.5e-2    //Wavelength (m)
ant_gain = 30   //Antenna gain (dB)
earth_ant = 38  //Earth station antenna gain (dB)
Tsys = 100      //Earth station receiver system temperature (K)
bw = 30e6       //Bandwidth (Hz)

//Calculations
s_n = wave_lt**2/(16*(%pi**2)*(r**2)*k*Tsys*bw)
s_n = 10*log10(s_n)     //Signal to Noise ratio (dB)
trans_pow_db = 10*log10(trans_pow)  //Transponder power (dB)
erp = ant_gain + trans_pow_db       //Effective radiated power (dB)
s_n_downlink = erp + earth_ant + s_n    //Signal to Noise ratio downlink(dB)

//Result
mprintf("The earth station S/N ratio is %.2f dB",s_n_downlink)
