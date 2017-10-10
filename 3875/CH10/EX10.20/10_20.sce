clc;
clear;
E0=100 //energy of the incident photon in keV
E=90 //energy of the scattered photon in keV
m=9.1*10^-31 //mass in kg
c=3*10^8 //velocity of light in m/s

//calculation
delta_E=E0-E //energy lost in keV
mc_square=(m*c^2)/(1.6*10^-19*10^3) //calculating one part of the formula
phi=acosd(1-(delta_E/E*mc_square/E0))

mprintf("The scattering angle of the photon is = %2.1f degree",phi)
