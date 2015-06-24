//Problem 16.03: A capacitor C is connected in parallel with a resistor R across a 120 V, 200 Hz supply. The supply current is 2 A at a power factor of 0.6 leading. Determine the values of C and R.

//initializing the variables:
pf = 0.6; // power factor
V = 120; // in Volts
f = 200; // in Hz
I = 2; // in Amperes

//calculation:
phi = acos(pf)
phid = phi*180/%pi
IR = I*cos(phi)
Ic = I*sin(phi)
R = V/IR
C = Ic/(2*%pi*f*V)

printf("\n\n Result \n\n")
printf("\n (a)Resistance R = %.0f Ohm ",R)
printf("\n (b)Capacitance,C = %.2E F ",C)