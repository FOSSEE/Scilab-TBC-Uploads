//Problem 15.29: A circuit consisting of a resistor in series with a capacitor takes 100 watts at a power factor of 0.5 from a 100 V, 60 Hz supply. Find (a) the current flowing, (b) the phase angle, (c) the resistance, (d) the impedance, and (e) the capacitance.

//initializing the variables:
V = 100; // in Volts
f = 60; // in Hz
P = 100; // in Watt
pf = 0.5; // power factor

//calculation:
I = P/(pf*V)
phi = acos(pf)*180/%pi
R = P/(I*I)
Z = V/I
Xc = (Z^2 - R^2)^0.5
C = 1/(2*%pi*f*Xc)

printf("\n\n Result \n\n")
printf("\n (a)Current I = %.0f A ",I)
printf("\n (b)phase angle = %.0f°",phi)
printf("\n (c)resistance = %.0f ohm ",R)
printf("\n (d)Impedance Z = %.0f Ohm ",Z)
printf("\n (e)capacitance = %.2E F ",C)