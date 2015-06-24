clc
//Chapter10
//Example10.2
//Given
P=3//Transmitter power
ht=100// Antenna height
G=5//Antenna gain
d=20e3//distance
lambda=1,hr=1//assumed
E=((88*G*ht*hr*P^0.5)/(lambda*d^2))//field strength
mprintf('The field strength at distance 20km is %f uV/m',E*1e6)

