//Problem 20.09: A single-phase, 50 Hz transformer has 25 primary turns and 300 secondary turns. The cross-sectional area of the core is 300 cm2. When the primary winding is connected to a 250 V supply, determine (a) the maximum value of the flux density in the core, and (b) the voltage induced in the secondary winding.

//initializing the variables:
V1 = 250; // in Volts
A = 0.03; // in m2
N2 = 300; // sec turns
N1 = 25; // prim turns
f = 50; // in Hz

//calculation:
//e.m.f. E1 = 4.44*f*Phim*N1
//maximum flux density,
Phim = V1/(4.44*f*N1)
//Phim = Bm*A, where Bm = maximum core flux density and A = cross-sectional area of the core
//maximum core flux density
Bm = Phim/A
//voltage induced in the secondary winding,
V2 = V1*N2/N1

printf("\n\n Result \n\n")
printf("\n (a)maximum core flux density %.2f T", Bm)
printf("\n (b)voltage induced in the secondary winding is %.0f V", V2)