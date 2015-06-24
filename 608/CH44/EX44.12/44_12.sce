//Problem 44.12: A cable has the following primary constants: resistance R = 80 ohm/loop km, conductance, G = 2 μS/km, and capacitance C = 5 nF/km. Determine, for minimum distortion at a frequency of 1.5 kHz (a) the value of inductance per loop kilometre required, (b) the propagation coefficient, (c) the velocity of propagation of signal, and (d) the wavelength on the line 

//initializing the variables:
R = 80; // in ohm/loop km
C = 5E-9; // in F/km
G = 2E-6; // in S/km
f = 1500; // in Hz

//calculation:
w = 2*%pi*f
//the condition for minimum distortion is given by LG = CR, from which, inductance
L = C*R/G
//attenuation coefficient,
a = (R*G)^0.5
//phase shift coefficient,
b = w*(L*C)^0.5
//propagation coefficient,
r = a + %i*b
//velocity of propagation,
u = 1/(L*C)^0.5
//wavelength
Y = u/f

printf("\n\n Result \n\n")
printf("\n inductance is %.2f H",L)
printf("\n propagation coefficient is %.4f +(%.4f)i",a,b)
printf("\n wavelength Y is %.2f km",Y)
printf("\n speed of transmission %.2E km/sec",u)
