//Problem 9.16: Two coils have a mutual inductance of 0.2 H. If the current in one coil is changed from 10 A to 4 A in 10 ms, calculate (a) the average induced e.m.f. in the second coil, (b) the change of flux linked with the second coil if it is wound with 500 turns.

//initializing the variables:
M = 0.2; // in Henry
I1 = 10; // in Amperes
I2 = 4; // in Amperes
dt = 0.010; // in secs
N = 500; // turns

//calculation:
dI1dt = (I1 -I2)/dt 
E2 = -1*dI1dt*M
dPhi = abs(E2)*dt/N

printf("\n\n Result \n\n")
printf("\n (a)Induced e.m.f. E2 = %.0f V", E2)
printf("\n (b)change of flux = %.4f Wb", dPhi)