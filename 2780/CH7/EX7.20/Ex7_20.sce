clc
//to calculate uncertainity in frequency
delt=10^-8 //uncertainity in time
delnu=1/(2*%pi*delt) 
disp("minimum uncertainity in the frequency of a photon is delnu="+string(delnu)+"sec^-1")
//to use the uncertainity principle to place a lower limit on the energy an electron must have if it is to be part of a nucleus
delx=5*10^-15 //uncertainity in position
delp=h/(2*2*%pi*delx) //uncertainbity in momentum
c=3*10^8 ///speed of light in m/s
E=delp*c
disp("energy of an electron is E="+string(E)+"J")
