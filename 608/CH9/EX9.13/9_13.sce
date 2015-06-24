//Problem 9.13: A 750 turn coil of inductance 3 H carries a current of 2 A. Calculate the flux linking the coil and the e.m.f. induced in the coil when the current collapses to zero in 20 ms

//initializing the variables:
I1 = 2; // in Amperes
I2 = 0; // in Amperes
dt = 0.020; // in secs
N = 750; //turns
L = 3; // in Henry

//calculation:
Phi = L*I1/N
dI = I1 - I2
E = -1*L*dI/dt

printf("\n\n Result \n\n")
printf("\n (a)Flux = %.3f Wb",Phi)
printf("\n (b)e.m.f. induced = %.0f V",E)