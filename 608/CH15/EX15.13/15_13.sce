//Problem 15.13: A resistor of 25 ohms is connected in series with a capacitor of 45 μF. Calculate (a) the impedance, and (b) the current taken from a 240 V, 50 Hz supply. Find also the phase angle between the supply voltage and the current.

//initializing the variables:
R = 25; // in ohms
C = 45E-6; // in Farads
f = 50; // in Hz
V = 240; // in volts

//calculation:
Xc = 1/(2*%pi*f*C)
Z = (R^2 + Xc^2)^0.5
I = V/Z
phid = atan(Xc/R)*180/%pi

printf("\n\n Result \n\n") 
printf("\n (a)Impedance, Z = %.2f ohms",Z)
printf("\n (b)current, I = %.2f A",I)
printf("\n (c)phase angle between the supply voltage and current is %.2f°",phid)