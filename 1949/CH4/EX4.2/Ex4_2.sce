//Chapter-4,Example 4_2,Page 4-28
clc()

//Given Data:
lam=6328*10^-10         //Wavelength in meter
P=4.5*10^-3             //Power in watts
h=6.63*10^-34           //Planck's Constant
c=3*10^8                //Velocity of light

//Calculations:
delE= h*c/lam           //Energy difference
//N*delE=P
N=P/delE                //number of photons emitted per second

printf('Number of photons emitted per second is =%.1f \n',N)

