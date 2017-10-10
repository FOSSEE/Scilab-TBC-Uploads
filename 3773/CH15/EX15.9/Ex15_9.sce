//Chapter 15: Antennas for Special Applications
//Example 15-20.2
clc;

//Variable Initialization
f = 1.6e9       //Frequency (Hz)
r = 1400e3      //Height (m)
r_sep = 3500e3    //Height for 10 degree seperation (m)
c = 3e8         //Speed of light(m/s)
Ta = 300        //Satellite antenna temperature (K)
Tr = 45         //Satellite receiver temperature (K)
k = 1.3e-23     //Boltzmann's constant (J/K)
bandwidth = 9.6e3   //Bandwidth (Hz)
snr = 6         //Signal to noise ratio (dB)
rcp_gain = 3    //Helix gain(dB)
beam_angle = 25 //RCP spot beam (degree)
Tsky = 6        //Sky Temperature (K)
Tr_handheld = 75    //Hand held receiver temperature (K)


//Calculations
wave_lt = c/f       //Wavelength (m)
Ld = (wave_lt/(4*%pi*r))**2  
Ld = 10*log10(Ld)       //Propagation loss factor (dB)
sat_gain = 40000/(beam_angle**2)
sat_gain = 10*log10(sat_gain)   //Satellite gain (dB)

Tsys = Ta+Tr        //System temperature (K)
N = k*Tsys*bandwidth    //Noise power (W)
N_db = 10*log10(N)      //Noise power (dB)

Pt_up = snr - (rcp_gain) - (sat_gain) + N_db - Ld   //Uplink power (dB)
Pt_up = 10**(Pt_up/10)      //Uplink power (W)

Ta_quad = 0.85*(Tsky) + 0.15*(Ta) //Downlink antenna temperature (K)
Tsys_quad = Ta_quad + Tr_handheld   //System temperature(K)
N_quad = k*Tsys_quad*bandwidth  //Noise power (W)
N_quad_db = 10*log10(N_quad)    //Noise power (dB)

Pt_down = snr - (rcp_gain) - (sat_gain) + round(N_quad_db) - round(Ld)                                  //Downlink power (dB)
Pt_down = 10**(Pt_down/10)      //Downlink power (W)

Ld_sep = (wave_lt/(4*%pi*r_sep))**2  
Ld_sep = 10*log10(Ld_sep)   //Propagation loss factor(dB)

Pt_sep = snr - (rcp_gain) - sat_gain + ceil(N_db) - round(Ld_sep)                                //Uplink power (dB)
Pt_sep = 10**(Pt_sep/10)        //Uplink power (W)

//Results
mprintf( "The Satellite gain is %.1f dB",sat_gain)
mprintf( "\nThe Uplink power required is %.3f W", Pt_up)
mprintf( "\nThe Downlink power required is %.4f W",Pt_down)
mprintf( "\nThe Uplink power required for 10 deg. from horizon is %.3f W",Pt_sep)
