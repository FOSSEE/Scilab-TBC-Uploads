//Problem 8.04: A conductor 350 mm long carries a current of 10 A and is at right-angles to a magnetic field lying between two circular pole faces each of radius 60 mm. If the total flux between the pole faces is 0.5 mWb, calculate the magnitude of the force exerted on the conductor.

//initializing the variables:
r = 0.06; // in m
I = 10; // in Amperes
l = 0.35; // in m
Phi = 0.5E-3; // in Wb
u0 = 4*%pi*1E-7;

//calculation:
A = %pi*r*r
B = Phi/A
F = B*I*l

printf("\n\nResult\n\n")
printf("\n (a)Force F = %.3f N\n",F)