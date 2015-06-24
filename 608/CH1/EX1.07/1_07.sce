//Problem 1.07: A source e.m.f. of 5 V supplies a current of 3 A for 10 minutes. How much energy is provided in this time?

//initializing the variables:
V = 5; // in Volts
I = 3; // in Ampere
t = 600; // in sec
//calculation:
P = V*I
E = P*t

printf("\n\nResult\n\n")
printf("\nEnergy(E): %.0f Joule(J)\n",E)