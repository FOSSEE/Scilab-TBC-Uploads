//Problem 33.10: For the circuit shown in Figure 33.52 determine the current flowing in the inductive branch by using Norton’s theorem.

//initializing the variables:
V1 = 20; // in volts
V2 = 10; // in volts
R1 = 2; // in ohm
R2 = 1.5; // in ohm
R3 = %i*2.95; // in ohm
R4 = 3; // in ohm

//calculation:
//The inductive branch is initially short-circuited, as shown in Figure 33.53.
//From Figure 33.53,
I1 = V1/R1
I2 = V2/R4
Isc = I1 + I2
//If the voltage sources are removed, the impedance, z, ‘looking in’ at a break made in AB is given by
z = R1*R4/(R1 + R4)
//The Norton equivalent network is shown in Figure 33.54, where current I is given by
I = (z/(z + R2 + R3))*Isc

printf("\n\n Result \n\n")
printf("\n  the current flowing in the inductive branch is %.2f + (%.2f)i A",real(I), imag(I))