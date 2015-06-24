clc
clear
//Input data
no=1.76//Refractive index of the ruby rod
vo=4.3*10^14//Frequency in Hz
dvo=1.5*10^11//The doppler broadening in Hz
t21=4.3*10^-3//Lifetime of spontantaneous emission in s
tp=6*10^-9//Lifetime of photon in s
c=(3*10^8)//Velocity of light in m/s

//Calculations
dN=((4*3.14^2*vo^2*no^3*t21*dvo)/(c^3*tp))/10^23//The difference between the population of the excited state and the ground state in m^-3

//Output
printf('The difference between the population of the excited state and the ground state is %3.3f*10^23 m^-3',dN)
