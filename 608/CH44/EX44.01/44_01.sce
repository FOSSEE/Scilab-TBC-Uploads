//Problem 44.01:A parallel-wire air-spaced transmission line operating at 1910 Hz has a phase shift of 0.05 rad/km. Determine (a) the wavelength on the line, and (b) the speed of transmission of a signal.

//initializing the variables:
f = 1910; // in Hz
b = 0.05; // in rad/km

//calculation:
w = 2*%pi*f
//wavelength 
Y = 2*%pi/b
//speed of transmission
u = f*Y

printf("\n\n Result \n\n")
printf("\n wavelength Y is %.1f km",Y)
printf("\n speed of transmission %.2E km/sec",u)
