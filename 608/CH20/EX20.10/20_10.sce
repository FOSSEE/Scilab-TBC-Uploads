//Problem 20.10: A single-phase 500 V/100 V, 50 Hz transformer has a maximum core flux density of 1.5 T and an effective core crosssectional area of 50 cm2. Determine the number of primary and secondary turns.

//initializing the variables:
V1 = 500; // in Volts
V2 = 100; // in Volts
Bm = 1.5; // in Tesla
A = 0.005; // in m2
f = 50; // in Hz

//calculation:
//Phim = Bm*A, where Bm = maximum core flux density and A = cross-sectional area of the core
//maximum core flux density
Phim = Bm*A
//e.m.f. E1 = 4.44*f*Phim*N1
//primary turns,
N1 = V1/(4.44*f*Phim)
//secondary turns,
N2 = V2*N1/V1

printf("\n\n Result \n\n")
printf("\n no. of primary and secondary turns are %.0f turns, and %.0f turns respectively", N1, N2)