//Problem 4.11:

//initializing the variables:
m = 2000; // in lb
v1 = 8; // in ft/s
v2 = 30; // in ft/s

//calculation:
KE1 = m*v1^2/(2*32.2)
KE2 = m*v2^2/(2*32.2)
delKE = KE1 - KE2
delKEbtu = delKE/778.17

printf("\n\nResult\n\n")
printf("\n the change in Kinetic energy is %.3f Btu",delKEbtu)