//Problem 16.06: A coil of inductance 159.2 mH and resistance 40 ohm is connected in parallel with a 30 μF capacitor across a 240 V, 50 Hz supply. Calculate (a) the current in the coil and its phase angle, (b) the current in the capacitor and its phase angle, (c) the supply current and its phase angle,(d) the circuit impedance, (e) the power consumed, (f) the apparent power, and (g) the reactive power. Draw the phasor diagram.

//initializing the variables:
C = 30E-6; // in Farads
R = 40; // in Ohms
L = 159.2E-3; // in Henry
V = 240; // in Volts
f = 50; // in Hz

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
phi = atan(abs(Iv)/Ih)
Z = V/I
P = V*I*cos(phi)
phid = phi*180/%pi
S = V*I
Q = V*I*sin(phi)

printf("\n\n Result \n\n")
printf("\n (a)Current through coil is %.3f A and lagged by phase angle is %.2f°",ILR,phi1d)
printf("\n (b)Current through capacitor is %.3f A and lead by phase angle is %.0f°",Ic,phi2d)
printf("\n (c)supply Current is %.3f A and lagged by phase angle is %.2f°",I,phid)
printf("\n (d)Impedance Z = %.2f Ohm ",Z)
printf("\n (e)Power consumed = %.0f Watt ",P)
printf("\n (f)apparent Power = %.1f VA ",S)
printf("\n (g)reactive Power = %.1f var ",Q)