//Problem 40.23: The airgap of a moving coil instrument is 2.0 mm long and has a cross-sectional area of 500 mm2. If the flux density is 50 mT, determine the total energy stored in the magnetic field of the airgap.

//initializing the variables:
B = 0.05; // in Tesla
A = 500E-6; // in m2
l = 0.002; // in m
u0 = 4*%pi*1E-7; 

//calculation:
//energy stored
W = (B^2)/(2*u0)
//Volume of airgap
v = A*l
//energy stored in airgap
W = W*v

printf("\n\n Result \n\n")
printf("\nenergy stored in the airgap is %.2E J",W)