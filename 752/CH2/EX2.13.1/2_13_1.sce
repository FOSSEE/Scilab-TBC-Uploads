clc;
//page no 74
//prob no. 2.13.1
//A rectangular pulse with h=3V and width=2ms across 10 ohm resistor
V=3;t=2*10^-3;R=10;
//Determination of average energy
P=(V^2)/R;//Instantaneous power
U=P*t;
disp('J',U,'The average energy is');