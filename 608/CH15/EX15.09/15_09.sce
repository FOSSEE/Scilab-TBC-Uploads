//Problem 15.09: A coil of inductance 318.3 mH and negligible resistance is connected in series with a 200 ohms resistor to a 240 V, 50 Hz supply. Calculate (a) the inductive reactance of the coil, (b) the impedance of the circuit, (c) the current in the circuit, (d) the p.d. across each component, and (e) the circuit phase angle

//initializing the variables:
R = 200; // in ohms
L = 0.3183; // in henry
Vac = 240; // in volts
f = 50; // in Hz

//calculation:
XL = 2*%pi*f*L
Z = (R^2 + XL^2)^0.5
I = Vac/Z
VL = I*XL
VR = I*R
phid = atan(XL/R)*180/%pi

printf("\n\n Result \n\n") 
printf("\n (a)Inductive reactance, XL = %.0f ohms",XL)
printf("\n (b)Impedance, Z = %.1f ohms",Z)
printf("\n (c)current, I = %.3f A",I)
printf("\n (d)p.d. across Inductor, VL = %.1f V and p.d. across resistance, VR = %.1f V",VL, VR)
printf("\n (e)circuit phase angle is %.2f°",phid)