//Problem 9.02: At what velocity must a conductor 75 mm long cut a magnetic field of flux density 0.6 T if an e.m.f. of 9 V is to be induced in it? Assume the conductor, the field and the direction of motion are mutually perpendicular.

//initializing the variables:
l = 0.075; // in m
E = 9; // in Volts
B = 0.6; // in Tesla
R = 20; // in ohms
u0 = 4*%pi*1E-7;

//calculation:
v = E/(B*l)

printf("\n\nResult\n\n")
printf("\n velocity v = %.0f m/s\n",v)