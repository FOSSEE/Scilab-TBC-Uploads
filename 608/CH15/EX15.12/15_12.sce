//Problem 15.12: A coil of inductance 159.2 mH and resistance 20 ohms is connected in series with a 60 ohms resistor to a 240 V, 50 Hz supply. Determine (a) the impedance of the circuit, (b) the current in the circuit, (c) the circuit phase angle, (d) the p.d. across the 60 ohms resistor and (e) the p.d. across the coil. (f) Draw the circuit phasor diagram showing all voltages.

//initializing the variables:
R = 60; // in ohms
Rc = 20; // in ohms
L = 159.2E-3; // in henry
f = 50; // in Hz
V = 240; // in volts

//calculation:
XL = 2*%pi*f*L
Rt = R + Rc
Z = (Rt^2 + XL^2)^0.5
I = V/Z
phid = atan(XL/Rt)*180/%pi
VR = I*R
Zc = (Rc^2 + XL^2)^0.5
Vc = I*Zc
VL = I*XL
VRc = I*Rc

printf("\n\n Result \n\n") 
printf("\n (a)Impedance, Z = %.2f ohms",Z)
printf("\n (b)current, I = %.3f A",I)
printf("\n (c)circuit phase angle is %.0f°",phid)
printf("\n (d)p.d. across resistance, VR = %.1f V", VR)
printf("\n (e)p.d. across coil, Vc = %.0f V",Vc)
printf("\n (f1)p.d. across Inductor, VL = %.1f V",VL)
printf("\n (f2)p.d. across coil resistance, VRc = %.2f V",VRc)