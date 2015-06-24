clc
//to calculate wavelength
h=6.6*10^-34 //plank's constant in J/sec
m=9.1*10^-31 //mass of electron in kg
c=3*10^8 //light speed in m/s
lambda=h/(m*c)
disp("wavelength of quantum of radiant energy is lambda="+string(lambda)+"m")
//to calculate number of photons 
power=12 //power emitted by the lamp =150*(8/100) in watts
E=12 //energy emitted per second
lambda=4500*10^-10
energy=(h*c)/lambda //energy contained in one photon in J
number=E/energy
disp("number of photons emitted per sec is number="+string(number)+"unitless")
