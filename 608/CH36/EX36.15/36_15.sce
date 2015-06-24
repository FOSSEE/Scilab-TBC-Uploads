//Problem 36.15: A voltage wave has an amplitude of 800 V at the fundamental frequency of 50 Hz and its nth harmonic has an amplitude 1.5% of the fundamental. The voltage is applied to a series circuit containing resistance 5 ohm, inductance 0.369 H and capacitance 0.122 μF. Resonance occurs at the nth harmonic. Determine (a) the value of n, (b) the maximum value of current at the nth harmonic, (c) the p.d. across the capacitor at the nth harmonic and (d) the maximum value of the fundamental current.

//initializing the variables:
V1m = 800; // in volts
f = 50; // in Hz
x = 0.015;
C = 0.122E-6; // in farads
R = 5; // in ohms
L = 0.369; // in Henry

//calculation:
//voltage at nth harmonic
Vnm = x*V1m
w = 2*%pi*f
//For resonance at the nth harmonic nwL = 1/nwC
n = 1/(w*(L*C)^0.5)
//At resonance, impedance
Zn = R
//the maximum value of current at the nth harmonic
Inm = Vnm/Zn
//capacitive reactance, at nth harmonic
Xcn = 1/(n*w*C)
//the p.d. across the capacitor at the nth harmonic
Vcn = Inm*Xcn
//At the fundamental frequency, inductive reactance,
XL1 = w*L
//capacitive reactance
Xc1 = 1/(w*C)
//Impedance at the fundamental frequency,
Z1 = R + %i*(XL1 - Xc1)
Z1mag = (real(Z1)^2 + imag(Z1)^2)^0.5
phiZ1 = atan(imag(Z1)/real(Z1))
//Maximum value of current at the fundamental frequency,
I1m = V1m/Z1mag

printf("\n\n Result \n\n")
printf("\n(a)n = %.0f",n)
printf("\n(b)the maximum value of current at the nth harmonic %.2f A",Inm)
printf("\n(c)the p.d. across the capacitor at the nth harmonic is %.2f",Vcn)
printf("\n(d)the maximum value of the fundamental current. %.2f A",I1m)