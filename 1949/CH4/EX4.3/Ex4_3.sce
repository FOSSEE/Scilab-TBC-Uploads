//Chapter-4,Example 4_3,Page 4-29
clc()

//Given Data:
lam=780*10^-9           //Wavelength of photon in meter
P=20*10^-3              //Power of each pulse in watts
t=10*10^-9              //Duration of each pulse
h=6.63*10^-34           //Planck's Constant
c=3*10^8                //Velocity of light

//Calculations:
delE= h*c/lam           //Energy of each photon
E=P*t                   //Energy of each pulse

N=E/delE                //Number of photons in each pulse
printf('Number of photons in each pulse is =%.1f \n',N)
