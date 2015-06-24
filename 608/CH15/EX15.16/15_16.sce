//Problem 15.16: The following three impedances are connected in series across a 40 V, 20 kHz supply: (i) a resistance of 8 ohms, (ii) a coil of inductance 130 μH and 5 ohms resistance, and (iii) a 10 ohms  resistor in series with a 0.25 μF capacitor. Calculate (a) the circuit current, (b) the circuit phase angle and (c) the voltage drop across each impedance.

//initializing the variables:
R1 = 8; // in ohms
C = 0.25E-6; // in Farads
L = 130E-6; // in Henry
Rc = 5; // in ohms
R2 = 10; // in ohms
f = 20000; // in Hz
V = 40; // in volts

//calculation:
XL = 2*%pi*f*L
Xc = 1/(2*%pi*f*C)
X = Xc - XL
R = R1 + R2 + Rc
//Since Xc is greater than XL, the circuit is capacitive.
Z = (R^2 + (Xc-XL)^2)^0.5
I = V/Z
phid = atan((Xc-XL)/R)*180/%pi
V1 = I*R1
V2 = I*((Rc^2 + XL^2)^0.5)
V3 = I*((R2^2 + Xc^2)^0.5)

printf("\n\n Result \n\n") 
printf("\n (a)Current,I = %.3f A",I)
printf("\n (b)circuit phase angle is %.2f°",phid)
printf("\n (c1)Voltage across the Resistance of 8 ohms = %.2f Volts",V1)
printf("\n (c2)Voltage across the coil, Vcoil = %.2f Volts",V2)
printf("\n (c3)p.d. across Capacitor resistance circuit = %.2f Volts",V3)