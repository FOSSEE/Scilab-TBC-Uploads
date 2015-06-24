//Problem 7.02: The maximum working flux density of a lifting electromagnet is 1.8 T and the effective area of a pole face is circular in cross-section. If the total magnetic flux produced is 353 mWb, determine the radius of the pole face.

//initializing the variables:
Phi = 353E-3; // in Wb
B = 1.8; // in tesla
Pi = 3.14;

//calculation:
A = Phi/B
r = (A/Pi)^0.5

printf("\n\nResult\n\n")
printf("\n radius of the pole face is %.2E m\n",r)