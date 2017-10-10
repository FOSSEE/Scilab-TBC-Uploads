//Chapter 15: Antennas for Special Applications
//Example 15-14.1
clc;

//Variable Initialization
fre = 4e9      //Frequency (Hz)
T_sys = 100     //System Temperature (K)
S_N = 20        //Signal to Noise ratio (dB)
bandwidth = 30e6    //Bandwidth (Hz)
P_trans = 5     //Satellite transponder power (W)
dia = 2         //Satellite parabolic dish diameter (m)
sat_spacing = 2 //Spacing between satellites (degrees)
r = 36000e3       //Downlink distance (m)
k = 1.38e-23    //Boltzmann's constant (J/K)
c = 3e8         //Speed of light (m/s)

//Calculation
wave_lt = c/fre
s_n = (wave_lt**2)/(16*(%pi**2)*(r**2)*k*T_sys*bandwidth)    
s_n = 10*log10(s_n)     //Signal to noise ratio for isotropic antennas (dB)

Ae = 0.5*%pi*(dia**2)/4      //Effective Aperture (m^2)
Gs = 4*%pi*Ae/(wave_lt**2)   
Gs = 10*log10(Gs)       //Antenna Gain (dB)

Ge = 20 - s_n - Gs - 10*log10(P_trans) //Required earth station antenna gain(dB)
Ae_e = (10**(Ge/10))*(wave_lt**2)/(4*%pi)       //Required earth station effective aperture (m^2)
Ap = Ae_e*2     //Required Physical aperture (m^2)

De = 2*sqrt(Ap/%pi)      //Required diameter of earth-station antenna(m)
hpbw = 65/(De/wave_lt)     //Half power beam width (degree)
bwfn = 145/(De/wave_lt)    //Beamwidth between first null (degree)

//Results
mprintf("The Required parabolic dish diameter of earth station antenna is %.1f m",De)
mprintf("\nThe Half power beamwidth is %.1f degrees",hpbw)
mprintf("\nThe Beamwidth between first null is %.1f",bwfn)
