clc
clear
//Input data
W=2.4//Work function in eV
l=6000*10^-10//Wavelength of the light in m
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs

//Calculations
vo=((W*e)/h)/10^14//Threshold frequency in Hz*10^14
v=(c/l)/10^14//Frequency of incident light in Hz*10^14

//Output
printf('Threshold frequency is %3.3f*10^14 Hz and Frequency of incident light is %i*10^14 Hz \n Since v<vo the photoelectric effect is not possible',vo,v)
