clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s
E0=6.20*10^3 //energy of photon in keV
freq_s=0.5/100 //frequency shift
m=9.1*10^-31 //mass in kg



//CALCULATION
lambda0=(h*c)/(E0*1.6*10^-19) //wavelength in m
delta_E=(freq_s*E0)/10^3 //Loss in energy of photon in keV
E=(E0/10^3)-delta_E //energy of scattered photon on keV
lambda=(h*c)/(E*10^3*1.6*10^-19) //wavelength of scattered photon in m
delta_lambda=lambda-lambda0 //compton shift
phi=acosd(1-(m*c*delta_lambda)/h)

mprintf("The angle through which Xray is scattered is = %2.1f degree",phi)
//The answer varies due to round off error.
