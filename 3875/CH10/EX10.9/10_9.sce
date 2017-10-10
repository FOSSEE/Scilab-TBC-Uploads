clc;
clear;
h=6.63*10^-34 //Plancks constant in Joule-s
c=3*10^8 //velocity of light in m/s
lambda1=10^-3 //wavelength in m
lambda2=100*10^-9 //wavelength in m
T=1000 //temperature in K
k_B=1.38*10^-23 //Boltzmann constant in m^2 kg s^-2 K^-1
d_lambda1=0.1*10^-3 //range of wavelength in m
d_lambda2=1*10^-9 //range of wavelength in m

//calculation
//case (a) when the range of wavelength is between 1-1.1 mm
E=exp((h*c)/(lambda1*k_B*T)) //calculating the exponential term of the eqn
U_lambda1=((8*%pi*h*c*d_lambda1)/(lambda1^5*(E-1)))
mprintf("The energy density is = %1.2e J/m^3.\n",U_lambda1)

//case (b) when the range of wavelength is between 100-101 nm
E1=exp((h*c)/(lambda2*k_B*T)) //calculating the exponential term of the eqn
U_lambda2=((8*%pi*h*c*d_lambda2)/(lambda2^5*(E1-1)))
mprintf("The energy density is = %1.2e J/m^3.",U_lambda2)
//The answer provided in the textbook is wrong.

mprintf("\nThus for shorter wavelengths the energy densities predicted by Rayleigh-Jeans law and Planks law are considerably different while for longer wavelengths the energy densites predicted are same.")
