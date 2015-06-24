//Problem 1.01:

//initializing the variables:
a1 = 1; // in cm/s2
h = 3600^2/1; // in s2/h2
d = 24^2/1; // in h2/day2
yr = 365^2/1; // in day2/yr2
in = 1/2.54; // in in/cm
ft = 1/12; // in ft/in
mil = 1/5280; // in mile/ft

//calculation:
a2 = a1*h*d*yr*in*ft*mil

printf("\n\nResult\n\n")
printf("\n Thus, 1.0 cm/s2 is equal to %.2E miles/yr2\n",a2)
