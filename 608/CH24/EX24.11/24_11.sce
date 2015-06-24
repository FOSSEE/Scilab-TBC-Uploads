//Problem 24.11:A coil of resistance R ohms and inductance L henrys is connected in series with a 50 μF capacitor. If the supply voltage is 225 V at 50 Hz and the current flowing in the circuit is 1.56/_-30° A, determine the values of R and L. Determine also the voltage across the coil and the voltage across the capacitor.

//initializing the variables:
C = 50E-6; // in Farads
f = 50; // in Hz
V = 225; // in volts
ri = 1.5; // in Amperes
thetai = -30; // in degrees

//calculation:
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
//Capacitive reactance, Xc
Xc = 1/(2*%pi*f*C)
//Circuit impedance Z
Z = V/I
R = real(Z)
XL = imag(Z) + Xc
//inductance L
L = XL/(2*%pi*f)
//Voltage across coil
Zcoil = R + %i*XL
Vcoil = I*Zcoil
//Voltage across capacitor,
Vc = -1*I*Xc*%i

printf("\n\n Result \n\n")
printf("\n (a)resistance is %.2f ohm and inductance is %.2f H ",R, L)
printf("\n (b)voltage across the coil is %.2f + (%.2f)i V ",real(Vcoil), imag(Vcoil))
printf("\n (c)voltage across the capacitor is %.2f + (%.2f)i V ",real(Vc), imag(Vc))