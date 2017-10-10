clc;
clear;
alpha=-0.5 //attenuation in dB/km
I_t=2*10^-6 //input power in W
I_o=1.5*10^-3 //output power in W

//calculation
L=-(10/0.5)*log10(I_t/I_o)
mprintf("The length of the fibre is = %2.1f km.",L)
