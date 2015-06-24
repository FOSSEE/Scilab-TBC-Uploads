//Problem 7.08: A uniform ring of cast iron has a cross-sectional area of 10 cm2 and a mean circumference of 20 cm. Determine the mmf necessary to produce a flux of 0.3 mWb in the ring.

//initializing the variables:
A = 10E-4; // in m2
l = 0.20; // in m
Phi = 0.3E-3; // in Wb
u0 = 4*%pi*1E-7;

//calculation:
B = Phi/A
// from the magnetisation curve, corresponding the value of B
H = 1000
mmf = H*l
printf("\n\nResult\n\n")
printf("\n (a)mmf = %.0f A\n",mmf)