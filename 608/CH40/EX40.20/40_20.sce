//Problem 40.20: Determine (a) the loop inductance, and (b) the capacitance of a 1 km length of single-phase twin line having conductors of diameter 10 mm and spaced 800 mm apart in air.

//initializing the variables:
u0 = 4*%pi*1E-7; 
ur = 1;
e0 = 8.85E-12;
er = 1;
l = 1000; // in m
D = 0.8; // in m
a = 0.01/2; // in m

//calculation:
//inductance per metre length
L = (u0*ur/(%pi))*(0.25 + log(D/a))
//Since the cable is 1000 m long,
L1k = L*l
//capacitance C
C = %pi*e0*er/(log(D/a))
////Since the cable is 1000 m long,
C1k = C*l

printf("\n\n Result \n\n")
printf("\ninductance is %.5f H",L1k)
printf("\ncapcitance is %.2E F",C1k)