//Problem 20.08: A 100 kVA, 4000 V/200 V, 50 Hz single-phase transformer has 100 secondary turns. Determine (a) the primary and secondary current, (b) the number of primary turns, and (c) the maximum value of the flux.

//initializing the variables:
S = 100000; // in VA
V1 = 4000; // in Volts
V2 = 200; // in Volts
N2 = 100; // sec turns
f = 50; // in Hz

//calculation:
//Transformer rating = V1*I1 = V2*I2
//primary current
I1 = S/V1
//secondary current
I2 = S/V2
//primary turns
N1 = N2*V1/V2
//maximum flux
//assuming E2 = V2
Phim = V2/(4.44*f*N2)

printf("\n\n Result \n\n")
printf("\n (a)primary current is %.0f A and secondary current is %.0f A", I1, I2)
printf("\n (b)number of primary turns is %.0f", N1)
printf("\n (c)maximum value of the flux is %.2E Wb",Phim)