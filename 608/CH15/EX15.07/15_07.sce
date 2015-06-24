//Problem 15.07: A coil has a resistance of 4 ohms and an inductance of 9.55 mH. Calculate (a) the reactance, (b) the impedance, and (c) the current taken from a 240 V, 50 Hz supply. Determine also the phase angle between the supply voltage and current.

//initializing the variables:
V = 240; // in volts
R = 4; // in ohms
L = 0.00955; // in Henry
f = 50; // in Hz

//calculation:
XL = 2*%pi*f*L
Z = (R^2 + XL^2)^0.5
I = V/Z
phid = atan(XL/R)*180/%pi

printf("\n\n Result \n\n") 
printf("\n (a)Inductive reactance, XL = %.0f ohms",XL)
printf("\n (b)Impedance, Z = %.0f ohms",Z)
printf("\n (c)Current, I = %.0f A",I)
printf("\n (d)phase angle between the supply voltage and current is %.2f°",phid)