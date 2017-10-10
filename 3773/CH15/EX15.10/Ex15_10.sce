//Chapter 15: Antennas for Special Applications
//Example 15-20.3
clc;

//Variable Initialization
f = 30e9        //Frequency (Hz)
Tr = 300        //Receiver temperature (K)
Ta = 275        //Satellite antenna temperature (K)
r = 1400e3      //Height (m)
c = 3e8         //Speed of light(m/s)
bw = 9.6e3      //Bandwidth per channel (Hz)
rcp_gain = 10   //RCP satellite gain (dBi)
rain_att = 10   //Rain attenuation (dB)
k = 1.4e-23 //Boltzmann's constant (J/K)
snr = 10    //Required SNR (dB)
ap_eff = 0.7    //Aperture efficiency (unitless)
Ta_2 = 10       //Dish antenna temperature (K)

//Calculations
wave_lt = c/f       //Wavelength (m)
Ld = (wave_lt/(4*%pi*r))**2 //Spatial loss factor(unitless)
Ld_db = 10*log10(Ld)    //Spatial loss factor(dB)
Tsys = Ta+Tr        //System temperature (K)

N = k*Tsys*bw   //Propagation loss due to rain (W)
N = 10*log10(N) //Propagation loss due to rain (dB)

Dr = -rcp_gain + snr - Ld_db + N + rain_att //Antenna gain (dB)
Dr = 10**(Dr/10)    //Antenna gain (unitless)

Dr_req = Dr/ap_eff   //Required antenna gain (unitless)
Dr_req_db = 10*log10(Dr_req)   //Required antenna gain (dB)

dish_dia = 2*wave_lt*sqrt(Dr_req/28)    //Required diameter of dish (m)

hpbw = sqrt(40000/Dr_req)   //Half power beam width (degrees)

Tsys2 = Ta_2 + Tr   //System temperature(K)
N2 = k*Tsys2*bw     //Propagation loss due to rain(W)
N2 = 10*log10(N2)   //Propagation loss due to rain(dB)

Pt_db = snr - Dr_req_db - rcp_gain + N2 - Ld_db + rain_att         //Transmitted power (dB)
Pt = 10**(Pt_db/10)

//Results
mprintf("The Uplink antenna gain required is %d dB",Dr_req_db)
mprintf("\nThe Required dish size %.3f m",dish_dia)
mprintf("\nThe HPBW is %.1f degrees",hpbw)
mprintf("\nThe Downlink satellite power required is %.3f W", Pt)
