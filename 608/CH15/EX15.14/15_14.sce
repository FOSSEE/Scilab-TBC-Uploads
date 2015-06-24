//Problem 15.14: A capacitor C is connected in series with a 40 ohm resistor across a supply of frequency 60 Hz. A current of 3 A flows and the circuit impedance is 50 ohms. Calculate: (a) the value of capacitance, C, (b) the supply voltage, (c) the phase angle between the supply voltage and current, (d) the p.d. across the resistor, and (e) the p.d. across the capacitor. Draw the phasor diagram.

//initializing the variables:
R = 40; // in ohms
f = 60; // in Hz
I = 3; //in amperes
Z = 50; // in ohms

//calculation:
Xc = (Z^2 - R^2)^0.5
C = 1/(2*%pi*f*Xc)
V = I*Z
phid = atan(Xc/R)*180/%pi
VR = I*R
Vc = I*Xc

printf("\n\n Result \n\n") 
printf("\n (a)capacitance, C = %.2E F",C)
printf("\n (b)Voltage, V = %.0f Volts",V)
printf("\n (c)phase angle between the supply voltage and current is %.2f°",phid)
printf("\n (d)p.d. across resistance, VR = %.0f V", VR)
printf("\n (e)p.d. across Capacitor, Vc = %.0f V",Vc)