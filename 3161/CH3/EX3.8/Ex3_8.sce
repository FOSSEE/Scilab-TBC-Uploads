clc;
//page 185
//problem 3.8

//Given ohmnic loss resistance is Ro = 12 Ohm,  
Ro = 12

//radiation resistance is Rr = 48 Ohm,
Rr = 48

//directivity is D = 2
D = 2

//Input current = 0.1*cos[2*pi*(10^6)*t], Amplitude of input current is A = 0.1 Amp
A = 0.1

//Equivalent resistance = Re = Ro+Rr
Re = Ro+Rr

//Total power used in antenna = Pin = (A^2)*Re/2
Pin = (A^2)*Re/2

//Power used in radiation = Prad = (A^2)*Rr/2
Prad = (A^2)*Rr/2

//Efficiency of the antenna = n = Prad/Pin
n = Prad/Pin

//Gain of antenna = Ga = efficiency*directivity
Ga = n*D

disp('Total power used in antenna '+string(Pin)+' Watt')
disp('Power used in radiation '+string(Prad)+' Watt')
disp('Efficiency of the antenna '+string(n))
disp('Gain of antenna '+string(Ga))
