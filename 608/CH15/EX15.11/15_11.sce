//Problem 15.11: A pure inductance of 1.273 mH is connected in series with a pure resistance of 30 ohms. If the frequency of the sinusoidal supply is 5 kHz and the p.d. across the 30 ohm resistor is 6 V, determine the value of the supply voltage and the voltage across the 1.273 mH inductance. Draw the phasor diagram.

//initializing the variables:
R = 30; // in ohms
L = 1.2273E-3; // in henry
f = 5000; // in Hz
VR = 6; // in volts

//calculation:
I =VR/R
XL = 2*%pi*f*L
Z = (R^2 + XL^2)^0.5
V = I*Z
VL = I*XL

printf("\n\n Result \n\n") 
printf("\n (a)supply voltage = %.0f Volts",V)
printf("\n (b)p.d. across Inductor, VL = %.0f V",VL)