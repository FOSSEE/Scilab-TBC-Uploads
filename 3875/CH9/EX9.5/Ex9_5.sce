clc;
clear;
L=0.5 //length of the fibre in km
I_0=7.5*10^-6 //input power in Watt
I_t=8.6*10^-6 //output power in Watt

//calculation
alpha=-(10/0.5)*log10(I_0/I_t)

mprintf("The loss specification of the fibre is = %1.1f dB/km",alpha)
//The answer varies dur to round off error.
