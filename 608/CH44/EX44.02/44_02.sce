//Problem 44.02:A transmission line has an inductance of 4 mH/loop km and a capacitance of 0.004 μF/km. Determine, for a frequency of operation of 1 kHz, (a) the phase delay, (b) the wavelength on the line, and (c) the velocity of propagation (in metres per second) of the signal.

//initializing the variables:
L = 0.004; // in Henry/loop
C = 0.004E-6; // in F/loop
f = 1000; // in Hz

//calculation:
w = 2*%pi*f
//phase delay
b = w*(L*C)^0.5
//wavelength 
Y = 2*%pi/b
//speed of transmission
u = f*Y

printf("\n\n Result \n\n")
printf("\n phase delay is %.3f rad/km",b)
printf("\n wavelength Y is %.1f km",Y)
printf("\n speed of transmission %.2E km/sec",u)
