//Problem 15.10: A coil consists of a resistance of 100 ohms and an inductance of 200 mH. If an alternating voltage, v, given by v = 200 sin500t volts is applied across the coil, calculate (a) the circuit impedance, (b) the current flowing, (c) the p.d. across the resistance, (d) the p.d. across the inductance and (e) the phase angle between voltage and current.

//initializing the variables:
R = 100; // in ohms
L = 0.2; // in henry
Vmax = 200; // in volts
w = 500; // in rad/sec

//calculation:
Vrms = 0.707*Vmax
f = w/(2*%pi)
XL = 2*%pi*f*L
Z = (R^2 + XL^2)^0.5
I = Vrms/Z
VL = I*XL
VR = I*R
phid = atan(XL/R)*180/%pi

printf("\n\n Result \n\n") 
printf("\n (a)Impedance, Z = %.1f ohms",Z)
printf("\n (b)current, I = %.0f A",I)
printf("\n (c)p.d. across resistance, VR = %.0f V", VR)
printf("\n (d)p.d. across Inductor, VL = %.0f V",VL)
printf("\n (e)circuit phase angle is %.0f°",phid)