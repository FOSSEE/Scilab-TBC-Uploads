//Problem 24.03: A 3 μF capacitor is connected to a supply of frequency 1 kHz and a current of 2.83/_90° A flows. Determine the value of the supply p.d.

//initializing the variables:
C = 3E-6 ; // in farad
f = 1000; // in Hz
ri = 2.83;
thetai = 90; // in degrees

//calculation:
//Capacitive reactance Xc
Xc = 1/(2*%pi*f*C)
// circuit impedance Z
Z = -1*%i*Xc
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
V = I*Z
x = real(V)
y = imag(V)

printf("\n\n Result \n\n")
printf("\n supply p.d. is %.0f + (%.0f) V", x,y)