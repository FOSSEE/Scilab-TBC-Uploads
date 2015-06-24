//Problem 9.01: A conductor 300 mm long moves at a uniform speed of 4 m/s at right-angles to a uniform magnetic field of flux density 1.25 T. Determine the current flowing in the conductor when (a) its ends are open-circuited, (b) its ends are connected to a load of 20 ohm resistance.

//initializing the variables:
l = 0.3; // in m
v = 4; // in m/s
B = 1.25; // in Tesla
R = 20; // in ohms
u0 = 4*%pi*1E-7;

//calculation:
E = B*l*v
I2 = E/R

printf("\n\nResult\n\n")
printf("\n (a)If the ends of the conductor are open circuited no current will flow even though %.1f V has been induced",E)
printf("\n (b)From Ohm’s law, I = %.3f Ampere",I2)