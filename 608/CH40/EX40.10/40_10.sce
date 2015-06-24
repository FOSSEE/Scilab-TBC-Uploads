//Problem 40.10: A single-phase circuit is composed of two parallel conductors, each of radius 4 mm, spaced 1.2 m apart in air. The p.d. between the conductors at a frequency of 50 Hz is 15 kV. Determine, for a 1 km length of line, (a) the capacitance of the conductors, (b) the value of charge carried by each conductor, and (c) the charging current.

//initializing the variables:
e0 = 8.85E-12; 
er = 1;
D = 1.2; // in m
r = 0.004; // in m
f = 50; // in Hz
V = 15000; // in Volts
l = 1000; // in m

//calculation:
//capacitance
C = %pi*e0*er/(log(D/r))
//capacitance of a 1 km length
Cpkm = C*l
//Charge Q
Q = Cpkm*V
//Charging current
I = V*2*%pi*f*Cpkm

printf("\n\n Result \n\n")
printf("\n capacitance per 1km length is %.2E F",Cpkm)
printf("\n Charge Q is %.2E C",Q)
printf("\n Charging current is %.3f A",I)