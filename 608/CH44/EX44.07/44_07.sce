//Problem 44.07: A transmission line has the following primary constants: resistance R = 15 ohm/loop km, inductance L = 3.4 mH/loop km, conductance G = 3 μS/km and capacitance C = 10 nF/km. Determine the characteristic impedance of the line when the frequency is 2 kHz.

//initializing the variables:
R = 15; // in ohm/loop km
L = 0.0034; // in H/loop km
C = 10E-9; // in F/km
G = 3E-6; // in S/km
f = 2000; // in Hz

//calculation:
w = 2*%pi*f
//characteristic impedance Zo
Zo = ((R + %i*w*L)/(G + %i*w*C))^0.5

printf("\n\n Result \n\n")
printf("\n characteristic impedance Zo is %.1f +(%.1f)i ohm",real(Zo), imag(Zo))
