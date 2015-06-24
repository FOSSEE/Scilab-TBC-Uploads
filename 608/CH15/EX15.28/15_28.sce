//Problem 15.28: The power taken by an inductive circuit when connected to a 120 V, 50 Hz supply is 400 W and the current is 8 A. Calculate (a) the resistance, (b) the impedance, (c) the reactance, (d) the power factor, and (e) the phase angle between voltage and current.

//initializing the variables:
V = 120; // in Volts
f = 50; // in Hz
P = 400; // in Watt
I = 8; // in Amperes

//calculation:
R = P/(I*I)
Z = V/I
XL = (Z^2 - R^2)^0.5
pf = P/(V*I)
phi = acos(pf)*180/%pi

printf("\n\n Result \n\n")
printf("\n (a)resistance = %.2f ohm ",R)
printf("\n (b)Impedance Z = %.0f Ohm ",Z)
printf("\n (c)reactance = %.2f ohm ",XL)
printf("\n (d)Power factor = %.4f",pf)
printf("\n (e)phase angle = %.2f°",phi)