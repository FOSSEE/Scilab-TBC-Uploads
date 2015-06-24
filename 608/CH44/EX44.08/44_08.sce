//Problem 44.08: A transmission line having negligible losses has primary line constants of inductance L = 0.5 mH/loop km and capacitance C = 0.12 μF/km. Determine, at an operating frequency of 400 kHz, (a) the characteristic impedance, (b) the propagation coefficient, (c) the wavelength on the line, and (d) the velocity of propagation, in metres per second, of a signal.

//initializing the variables:
L = 0.0005; // in H/loop km
C = 0.12E-6; // in F/km
f = 400000; // in Hz

//calculation:
w = 2*%pi*f
//characteristic impedance Zo
Zo = (L/C)^0.5
//the propagation coefficient
r = %i*w*(L*C)^0.5
//the attenuation coefficient 
a = real(r)
//the phaseshift coefficient
b = imag(r)
//wavelength
Y = 2*%pi/b
//velocity of propagation 
u = f*Y

printf("\n\n Result \n\n")
printf("\n characteristic impedance Zo is %.1f +(%.1f)i ohm",real(Zo), imag(Zo))
printf("\n propagation coefficient is %.2f +(%.2f)i",a,b)
printf("\n wavelength Y is %.3f km",Y)
printf("\n speed of transmission %.2E km/sec",u)
