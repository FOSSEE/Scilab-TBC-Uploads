clc
//initialisation of variables
T= 25 //C
H= -36430 //cal
S= -4.19 //cal deg^-1
a= 0.1
f= 0.2
R= 1.987 //cal/mol K
//CALCULATIONS
G= H-(273.2+T)*S
Q= a*f/a^2
G1= G+R*(273.2+T)*log(Q)
//RESULTS
printf (' increase in free energy = %.1f cal',G1-0.2)
