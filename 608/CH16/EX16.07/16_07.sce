//Problem 16.07: A coil of inductance 0.12 H and resistance 3 kohm is connected in parallel with a 0.02 μF capacitor and is supplied at 40 V at a frequency of 5 kHz. Determine (a) the current in the coil, and (b) the current in the capacitor. (c) Draw to scale the phasor diagram and measure the supply current and its phase angle; check the answer by calculation. Determine (d) the circuit impedance and (e) the power consumed.

//initializing the variables:
C = 0.02E-6; // in Farads
R = 3000; // in Ohms
L = 120E-3; // in Henry
V = 40; // in Volts
f = 5000; // in Hz

//calculation:
XL = 2*%pi*f*L
Z1 = (R^2 + XL^2)^0.5
ILR = V/Z1
phi1 = atan(XL/R)
phi1d = phi1*180/%pi
Xc = 1/(2*%pi*f*C)
Ic = V/Xc
phi2 = %pi/2
phi2d = phi2*180/%pi
Ih = ILR*cos(phi1) + Ic*cos(phi2)
Iv = -1*ILR*sin(phi1) + Ic*sin(phi2)
I = (Ih^2 + Iv^2)^0.5
phi = atan((Iv)/Ih)
phid = phi*180/%pi
Z = V/I
P = V*I*cos(phi)

printf("\n\n Result \n\n")
printf("\n (a)Current through coil is %.5f A and lagged by phase angle is %.2f°",ILR,phi1d)
printf("\n (b)Current through capacitor is %.5f A and lead by phase angle is %.0f°",Ic,phi2d)
printf("\n (c)supply Current is %.5f A and lagged by phase angle is %.2f°",I,phid)
printf("\n (d)Impedance Z = %.2f Ohm ",Z)
printf("\n (e)Power consumed = %.4f Watt ",P)