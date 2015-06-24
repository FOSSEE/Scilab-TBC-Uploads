clc
//Chapter 4:Frequency selective networks and transformers
//example 4.3 page no 115 
//given
L=10*10^-6//inductance
C=10*10^-12//capacitance
wo=(sqrt(L*C))^-1//resonant frequency(ignoring the finite resistance)
Q=100
rs=wo*L/Q//series resistance
Rp=(wo*L)^2/rs//parallel resistance
QL=50*10^3/(wo*L)//loaded Q
mprintf('the loaded Q is %f ',QL)
