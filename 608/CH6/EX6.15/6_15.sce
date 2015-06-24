//Problem 6.15: (a) Determine the energy stored in a 3 μF capacitor when charged to 400 V. (b) Find also the average power developed if this energy is dissipated in a time of 10 μs

//initializing the variables:
C = 3E-6; // in Farads
V = 400; // in Volts
t = 10E-6; // in secs

//calculation:
W = C*V*V/2
P = W/t

printf("\n\nResult\n\n")
printf("\n (a)Energy stored %.2f J",W)
printf("\n (b)Power developed %.2E W ",P)