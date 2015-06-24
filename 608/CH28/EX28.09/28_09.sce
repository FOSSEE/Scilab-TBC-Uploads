//Problem 28.09: A series R–L–C circuit is connected to a 0.2 V supply and the current is at its maximum value of 4 mA when the supply frequency is adjusted to 3 kHz. The Q-factor of the circuit under these conditions is 100. Determine the value of (a) the circuit resistance, (b) the circuit inductance, (c) the circuit capacitance, and (d) the voltage across the capacitor

//initializing the variables:
V = 0.2; // in Volts
I = 0.004; // in Amperes
fr = 3000; // in Hz
Qr = 100; // Q-factor

//calculation:
wr = 2*%pi*fr
//At resonance, impedance
Z = V/I
//At resonance the circuit impedance, Z
R = Z
//Q-factor at resonance is given by Qr = wr*L/R, then L is
L = Qr*R/wr
//At resonance r*L = 1/(wr*C)
//capacitance, C
C = 1/(L*wr*wr)
//Q-factor at resonance in a series circuit represents the voltage magnification Qr = Vc/V, then Vc is
Vc = Qr*V

printf("\n\n Result \n\n")
printf("\n (a)the circuit resistance is %.0f ohm ",R)
printf("\n (b)inductance, L is %.3f H ",L)
printf("\n (c)capacitance, C is %.2E F ",C)
printf("\n (d)the voltage across the capacitor is %.0f V ",Vc)