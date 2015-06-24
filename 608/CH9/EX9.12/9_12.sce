//Problem 9.12: A flux of 25 mWb links with a 1500 turn coil when a current of 3 A passes through the coil. Calculate (a) the inductance of the coil, (b) the energy stored in the magnetic field, and (c) the average e.m.f. induced if the current falls to zero in 150 ms.

//initializing the variables:
I1 = 3; // in Amperes
I2 = 0; // in Amperes
dt = 0.150; // in secs
N = 1500; //turns
Phi = 0.025; // in Wb

//calculation:
L = N*Phi/I1
W = L*I1*I1/2
dI = I1 - I2
E = -1*L*dI/dt

printf("\n\n Result \n\n")
printf("\n (a)Inductance L = %.1f H",L)
printf("\n (b)energy stored W = %.2f J",W)
printf("\n (c)e.m.f. induced = %.0f V",E)