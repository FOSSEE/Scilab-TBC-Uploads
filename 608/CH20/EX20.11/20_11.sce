//Problem 20.11: A 4500 V/225 V, 50 Hz single-phase transformer is to have an approximate e.m.f. per turn of 15 V and operate with a maximum flux of 1.4 T. Calculate (a) the number of primary and secondary turns and (b) the cross-sectional area of the core.

//initializing the variables:
emfpt = 15; // in Volts
V1 = 4500; // in Volts
V2 = 225; // in Volts
Bm = 1.4; // in Tesla
f = 50; // in Hz

//calculation:
//E.m.f. per turn, V1/N1 = V2/N2 = emfpt
//primary turns,
N1 = V1/emfpt
//secondary turns,
N2 = V2/emfpt
//e.m.f. E1 = 4.44*f*Phim*N1
//maximum flux density,
Phim = V1/(4.44*f*N1)
//Phim = Bm*A, where Bm = maximum core flux density and A = cross-sectional area of the core
//cross-sectional area
A = Phim/Bm

printf("\n\n Result \n\n")
printf("\n (a)no. of primary and secondary turns are %.0f turns, and %.0f turns respectively", N1, N2)
printf("\n (b)cross-sectional area is %.2E m2", A)