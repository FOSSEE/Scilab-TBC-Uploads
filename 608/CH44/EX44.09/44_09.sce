//Problem 44.09: At a frequency of 1 kHz the primary constants of a transmission line are resistance R = 25 ohm/loop km, inductance L = 5 mH/loop km, capacitance C = 0.04 μF/km and conductance G = 80 μS/km. Determine for the line (a) the characteristic impedance, (b) the propagation coefficient, (c) the attenuation coefficient and (d) the phase-shift coefficient.

//initializing the variables:
R = 25; // in ohm/loop km
L = 0.005; // in H/loop km
C = 0.04E-6; // in F/km
G = 80E-6; // in S/km
f = 1000; // in Hz

//calculation:
w = 2*%pi*f
//characteristic impedance Zo
Zo = ((R + %i*w*L)/(G + %i*w*C))^0.5
//the propagation coefficient
r =((R + %i*w*L)*(G + %i*w*C))^0.5
//the attenuation coefficient 
a = real(r)
//the phaseshift coefficient
b = imag(r)

printf("\n\n Result \n\n")
printf("\n characteristic impedance Zo is %.1f +(%.1f)i ohm",real(Zo), imag(Zo))
printf("\n propagation coefficient is %.4f +(%.4f)i",a,b)
printf("\n attenuation coefficient is %.4f Np/km",a)
printf("\n the phaseshift coefficient %.4f rad/km",b)
