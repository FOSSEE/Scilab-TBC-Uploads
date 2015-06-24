//Problem 16.01: A 20 ohm resistor is connected in parallel with an inductance of 2.387 mH across a 60 V, 1 kHz supply. Calculate (a) the current in each branch, (b) the supply current, (c) the circuit phase angle, (d) the circuit impedance, and (e) the power consumed.

//initializing the variables:
R = 20; // in Ohms
L = 2.387E-3; // in Henry
V = 60; // in Volts
f = 1000; // in Hz

//calculation:
IR = V/R
XL = 2*%pi*f*L
IL = V/XL
I = (IR^2 + IL^2)^0.5
phi = atan(IL/IR)
phid = phi*180/%pi
Z = V/I
P = V*I*cos(phi)

printf("\n\n Result \n\n")
printf("\n (a)Current through resistor is %.0f A  and current through Inductor is %.0f A",IR, IL)
printf("\n (b)current, I = %.0f A ",I)
printf("\n (c)phase angle = %.2f°",phid)
printf("\n (d)Impedance Z = %.0f Ohm ",Z)
printf("\n (e)Power consumed = %.0f Watt ",P)