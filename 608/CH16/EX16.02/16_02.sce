//Problem 16.02: A 30 μF capacitor is connected in parallel with an 80 ohms resistor across a 240 V, 50 Hz supply. Calculate (a) the current in each branch, (b) the supply current, (c) the circuit phase angle, (d) the circuit impedance, (e) the power dissipated, and (f) the apparent power.

//initializing the variables:
R = 80; // in Ohms
C = 30E-6; // in Farads
V = 240; // in Volts
f = 50; // in Hz

//calculation:
IR = V/R
Xc = 1/(2*%pi*f*C)
Ic = V/Xc
I = (IR^2 + Ic^2)^0.5
phi = atan(Ic/IR)
phid = phi*180/%pi
Z = V/I
P = V*I*cos(phi)
S = V*I

printf("\n\n Result \n\n")
printf("\n (a)Current through resistor is %.0f A  and current through capacitor is %.3f A",IR, Ic)
printf("\n (b)current, I = %.3f A ",I)
printf("\n (c)phase angle = %.2f°",phid)
printf("\n (d)Impedance Z = %.2f Ohm ",Z)
printf("\n (e)Power consumed = %.0f Watt ",P)
printf("\n (f)apparent Power = %.1f VA ",S)