//Tested on Windows 7 Ultimate 32-bit
//Chapter 2 Fundamental Concepts: Energy Bands in Solids Pg no. 51
clear;
clc;

//Given Data

n=2;//orbit for Balmer series
h=6.625D-34;//planck's constant in Joules-sec
c=3D8;//speed of light in meter per second

//Solution

for k=3:6
    hf=-13.6*(1/(k^2)-1/(2^2));//radiated energy in eV
    hf2=hf*1.6D-19;//converting from eV to Joules
    f=hf2/h;//frequency of emitted radiation in Hz
    l=c/f;//wavelength of emitted radiation in meters
    u=l*10^6;//converting wavelength into micro meter
    A=l*10^10;//converting wavelength into angstroms
    
    printf("n=%d,hf%d2=%.2f eV,λ=%.3f μm = %d Å \n",k,k,hf,u,A);
end

hf=-13.6*(0-1/(2^2));//as k tends to infinity 1/k tends to zero
hf2=hf*1.6D-19;//converting from eV to Joules
f=hf2/h;//frequency of emitted radiation in Hz
l=c/f;//wavelength of emitted radiation in meters
u=l*10^6;//converting wavelength into micro meter
A=l*10^10;//converting wavelength into angstroms
    
    printf("n=∞ ,hf∞2=%.2f eV,λ=%.3f μm = %d Å \n",hf,u,A);


//Errors with respect to book due to decimal approximations
