//Chapter 15: Antennas for Special Applications
//Example 15-21.1
clc;

//Variable Initialization
dia = 1000    //Diameter of asteroid (m)
prc = 0.4     //Power reflection coefficient of asteroid (unitless)
f = 4e9       //Frequency (Hz)
P = 1e9       //Power (W)
s = 20e3      //Asteroid speed (m/s)
ast_dis = 0.4    //Distance of asteroid (AU)
au = 1.5e11     //Astronomical Unit (m)
c = 3e8       //Speed of light (m/s)
k = 1.38e-23    //Boltzmann's constant (m^2 kg s^-2 K^-1)
Tsys = 10      //System temperature (K)
B = 1e6     //Bandwidth (Hz)
snr = 10    //Signal to noise ratio (dB)
eap = 0.75    //Aperture efficiency (unitless)

sigma = prc*%pi*s**2    //Radar cross section (m^2)
ast_dm = au*ast_dis    //Astroid distance (m)
lmda = c/f     //Wavelength(m)

d4 = (64*(lmda**2)*(ast_dm**4)*k*Tsys*B*snr)/((eap**2)*%pi*(sigma)*P)
d = d4**(0.25)    //Diameter of dish (m)

delf = 2*s/lmda    //Doppler shift (Hz)
delt = 2*(ast_dm)/c    //Time delay (s)

timp = ast_dm/s    //Time before impact (s) 


//Result
mprintf("The diameter of the dish is %.0f m",d)
mprintf("\nThe doppler shift is %.1f Hz",delf)
mprintf("\nThe time delay for the radar signal is %d s", delt)
mprintf("\nThe time before impact is %d s", timp)
