//Problem 16.05: Repeat Problem 16.04 for the condition when the frequency is changed to 150 Hz.

//initializing the variables:
C = 25E-6; // in Farads
L = 120E-3; // in Henry
V = 100; // in Volts
f = 150; // in Hz

//calculation:
XL = 2*%pi*f*L
IL = V/XL
Xc = 1/(2*%pi*f*C)
Ic = V/Xc
//IL and Ic are anti-phase. Hence supply current,
I = Ic - IL
//the current leads the supply voltage V by 90°
phi = %pi/2
phid = phi*180/%pi
Z = V/I
P = V*I*cos(phi)

printf("\n\n Result \n\n")
printf("\n (a)Current through Inductor is %.3f A  and current through capacitor is %.3f A",IL, Ic)
printf("\n (b)current, I = %.3f A ",I)
printf("\n (c)phase angle = %.0f°",phid)
printf("\n (d)Impedance Z = %.2f Ohm ",Z)
printf("\n (e)Power consumed = %.0f Watt ",P)