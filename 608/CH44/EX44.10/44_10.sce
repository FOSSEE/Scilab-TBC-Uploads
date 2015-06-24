//Problem 44.10: An open wire line is 300 km long and is terminated in its characteristic impedance. At the sending end is a generator having an open-circuit e.m.f. of 10.0 V, an internal impedance of (400 + j0) ohmand a frequency of 1 kHz. If the line primary constants are R = 8 ohm/loop km, L = 3 mH/loop km, C = 7500 pF/km and G = 0.25 μS/km, determine (a) the characteristic impedance, (b) the propagation coefficient, (c) the attenuation and phase-shift coefficients, (d) the sending-end current, (e) the receiving-end current, (f) the wavelength on the line, and (g) the speed of transmission of signal.

//initializing the variables:
R = 8; // in ohm/loop km
L = 0.003; // in H/loop km
C = 7500E-12; // in F/km
G = 0.25E-6; // in S/km
f = 1000; // in Hz
n = 300; // in km
Zg = 400 + %i*0; // in ohm
Vg = 10; // in Volts

//calculation:
w = 2*%pi*f
//characteristic impedance Zo
Zo = ((R + %i*w*L)/(G + %i*w*C))^0.5
//the propagation coefficient
r = ((R + %i*w*L)*(G + %i*w*C))^0.5
//the attenuation coefficient 
a = real(r)
//the phaseshift coefficient
b = imag(r)
//the sending-end current,
Is = Vg/(Zg + Zo)
//the receiving-end current,
IR = Is*%e^(-1*n*r)
//wavelength
Y = 2*%pi/b
//velocity of propagation 
u = f*Y

printf("\n\n Result \n\n")
printf("\n characteristic impedance Zo is %.1f +(%.1f)i ohm",real(Zo), imag(Zo))
printf("\n propagation coefficient is %.2f +(%.2f)i",a,b)
printf("\n attenuation coefficient is %.4f Np/km and the phaseshift coefficient %.4f rad/km",a,b)
printf("\n sending-end current Is is %.3E +(%.3E)i A",real(Is), imag(Is))
printf("\n receiving-end current IR is %.3E +(%.3E)i A",real(IR), imag(IR))
printf("\n wavelength Y is %.3f km",Y)
printf("\n speed of transmission %.2E km/sec",u)
