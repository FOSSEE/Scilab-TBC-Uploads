//Problem 24.01: Determine the values of the resistance and the series-connected inductance or capacitance for each of the following impedances:(a)(12 + i5)ohm (b)-i40 ohm (c)30/_60° ohm (d)2.20 x 10^6 /_-30° ohm. Assume for each a frequency of 50 Hz.

//initializing the variables:
z1 = 12 + %i*5;
z2 = -40*%i;
r3 = 30;
theta3 = 60;  // in degrees
r4 = 2.20E6; 
theta4 = -30; // in degrees
f = 50; // in Hz

//calculation:
//for an R–L series circuit, impedance
// Z = R + iXL
Ra = real(z1)
XLa = imag(z1)
La = XLa/(2*%pi*f)
//for a purely capacitive circuit, impedance Z = -iXc
Xcb = abs(imag(z2))
Cb = 1/(2*%pi*f*Xcb)
z3 = r3*cos(theta3*%pi/180) + %i*(r3*sin(theta3*%pi/180))
Rc = real(z3)
XLc = imag(z3)
Lc = XLc/(2*%pi*f)
z4 = r4*cos(theta4*%pi/180) + %i*(r4*sin(theta4*%pi/180))
Rd = real(z4)
Xcd = abs(imag(z4))
Cd = 1/(2*%pi*f*Xcd)

printf("\n\n Result \n\n")
printf("\n (a)an impedance (12 + i5)ohm represents a resistance of %.0f ohm in series with an inductance of %.2E", Ra,La)
printf("\n (b)an impedance -i40 ohm represents a pure capacitor of capacitance %.2E", Cb)
printf("\n (c)an impedance 30/_60° ohm represents a resistance of %.0f ohm in series with an inductance of %.2E", Rc,Lc)
printf("\n (d)an impedance 2.20 x 10^6 /_-30° ohm represents a resistance of %.2E ohm in series with a capacitor of capacitance %.2E",Rd, Cd)