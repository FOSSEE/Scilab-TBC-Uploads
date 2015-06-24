//Problem 15.15: A coil of resistance 5 ohms and inductance 120 mH in series with a 100 μF capacitor, is connected to a 300 V, 50 Hz supply. Calculate (a) the current flowing, (b) the phase difference between the supply voltage and current, (c) the voltage across the coil and (d) the voltage across the capacitor.

//initializing the variables:
R = 5; // in ohms
C = 100E-6; // in Farads
L = 0.12; // in Henry
f = 50; // in Hz
V = 300; // in volts

//calculation:
XL = 2*%pi*f*L
Xc = 1/(2*%pi*f*C)
X = XL - Xc
//Since XL is greater than Xc, the circuit is inductive.
Z = (R^2 + (XL-Xc)^2)^0.5
I = V/Z
phid = atan((XL-Xc)/R)*180/%pi
Zcl = (R^2 + XL^2)^0.5
Vcl = I*Zcl
phidc = atan(XL/R)*180/%pi
Vc = I*Xc

printf("\n\n Result \n\n") 
printf("\n (a)Current,I = %.2f A",I)
printf("\n (b)phase angle between the supply voltage and current is %.2f°",phid)
printf("\n (c)Voltage across the coil, Vcoil = %.0f Volts",Vcl)
printf("\n (d)p.d. across Capacitor, Vc = %.0f V",Vc)