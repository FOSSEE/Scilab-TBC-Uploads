//Problem 20.12: A single-phase transformer has 2000 turns on the primary and 800 turns on the secondary. Its no-load current is 5 A at a power factor of 0.20 lagging. Assuming the volt drop in the windings is negligible, determine the primary current and power factor when the secondary current is 100 A at a power factor of 0.85 lagging.

//initializing the variables:
N1 = 2000; // prim turns
N2 = 800; // sec turns
I0 = 5; // in Amperes
pf0 = 0.20; // power factor
I2 = 100; // in Amperes
pf2 = 0.85; // power factor

//calculation:
//Let I01 be the component of the primary current which provides the restoring mmf. Then I01*N1 = I2*N2
I01 = I2*N2/N1
//If the power factor of the secondary is 0.85
phi2 = acos(pf2)
//If the power factor on no-load is 0.20,
phi0 = acos(pf0)
I1h = I0*cos(phi0) + I01*cos(phi2)
I1v = I0*sin(phi0) + I01*sin(phi2)
//Hence the magnitude of I1
I1 = (I1h*I1h + I1v*I1v)^0.5
pf1 = cos(atan(I1v/I1h))

printf("\n\n Result \n\n")
printf("\n Primary currnt is %.2f A, and Power factor is %.2f", I1, pf1)