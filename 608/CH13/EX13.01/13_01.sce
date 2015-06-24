//Problem 13.01: (a) Find the unknown currents marked in Figure 13.3(a). (b) Determine the value of e.m.f. E in Figure 13.3(b).

//initializing the variables:
Iab = 50; // in ampere
Ibc = 20; // in ampere
Iec = 15; // in ampere
Idf = 120; // in ampere
Ifg = 40; // in ampere
Iab = 50; // in ampere
I = 2; // in ampere
V1 = 4; // in volts
V2 = 3; // in volts
V3 = 6; // in volts
R1 = 1; // in ohms
R2 = 2; // in ohms
R3 = 2.5; // in ohms
R4 = 1.5; // in ohms

//calculation:
I1 = Iab - Ibc
I2 = Ibc + Iec
I3 = I1 - Idf
I4 = Iec - I3
I5 = Idf - Ifg
// Applying Kirchhoff’s voltage law and moving clockwise around the loop of Figure 13.3(b) starting at point A:
E = I*R2 + I*R3 + I*R4 + I*R1 - V2 - V3 + V1

printf("\n\n Result \n\n") 
printf("\n (a) unknown currents I1, I2, I3, I4, I5 are %.0fA, %.0fA, %.0fA, %.0fA, %.0fA respetively",I1, I2, I3, I4, I5)
printf("\n (b) value of e.m.f. E = %.0f Volts",E)