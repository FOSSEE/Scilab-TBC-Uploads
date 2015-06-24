//Problem 26.07: A circuit has an impedance Z = (3+i4)ohm and a source p.d. of 50/_30° V at a frequency of 1.5 kHz. Determine (a) the supply current, (b) the active, apparent and reactive power, (c) the rating of a capacitor to be connected in parallel with impedance Z to improve the power factor of the circuit to 0.966 lagging, and (d) the value of capacitance needed to improve the power factor to 0.966 lagging.

//initializing the variables:
Z = 3 + %i*4; // in ohms
rv = 50; // in volts
thetav = 30; // in Degrees
f = 1500; // in Hz
pf1 = 0.966; // in power factor

//calculation:
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Supply current, I
I = V/Z
Istr = real(I) - %i*imag(I)
//Apparent power, S
S = V*Istr
//active power, Pa
Pa = real(S)
//reactive power, Q
Q = abs(imag(S))
//apparent power, S
S = (real(S)^2 + imag(S)^2)^0.5
phi1 = acos(pf1)
phi1d = phi1*180/%pi
//rating of the capacitor 
Pr = Q - Pa*tan(phi1)
//Current in capacitor, Ic
Ic = Pr/rv
//Capacitive reactance, Xc
Xc = rv/Ic
C = 1/(2*%pi*f*Xc)

printf("\n\n Result \n\n")
printf("\n (a)supply current, I is %.2f + (%.2f)i A  ",real(I), imag(I))
printf("\n (b)active power is %.0f W, apparent power is %.0f W and reactive power is %.0f W ",Pa, S, Q)
printf("\n (c)the rating of the capacitors is %.1f var\n",Pr)
printf(" (d)value of capacitance needed to improve the power factor to 0.966 lagging is %.3E F\n", C)