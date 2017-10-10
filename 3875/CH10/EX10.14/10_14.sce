clc;
clear;
P=10^-3 //power in watt
h=6.62*10^-34 //Plancks constant in J-s
v=3*10^8 //frequncy of light in Hz
lambda=4560*10^-10 //wavelength in m
eff=0.005 //quantum efficiency
e=1.6*10^-19 //charge in C

//calculation
E=(h*v)/lambda //energy of each photon in joules
N=P/E //no of photons incident on the metal per sec
N_e=N*eff //no of electrons released per sec
I=N_e*e

mprintf("The photoelectric current is = %1.3e amp or 1.837 micro-amp",I)
//The Answer provided in the textbook is wrong.
