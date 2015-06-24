//Problem 7.01: A magnetic pole face has a rectangular section having dimensions 200 mm by 100 mm. If the total flux emerging from the pole is 150 μWb, calculate the flux density.

//initializing the variables:
Phi = 150E-6; // in Wb
l = 200E-3; // in m
b = 100E-3; // in m

//calculation:
A = l*b
B = Phi/A

printf("\n\nResult\n\n")
printf("\n Flux density %.2E T\n",B)