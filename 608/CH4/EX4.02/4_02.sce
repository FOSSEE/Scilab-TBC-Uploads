//Problem 4.02: A cell has an internal resistance of 0.02 ohms and an e.m.f. of 2.0 V. Calculate its terminal p.d. if it delivers (a) 5 A, (b) 50 A

//initializing the variables:
r = 0.02; // in ohms
e = 2; // in volts
I1 = 5; // in Amperes
I2 = 50; // in Amperes

//calculation:
pd1 = e - (I1*r)
pd2 = e - (I2*r)

printf("\n\nResult\n\n")
printf("\n(a)p.d %.1f Volts(V)",pd1)
printf("\n(b)p.d %.1f Volts(V)\n",pd2)