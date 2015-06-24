//Chapter 6, Problem 9
clc;
n=19;                           //No of interleaved plates
n=n-1;
A=(75*10^-3)*(75*10^-3);            //Calculating area of plates
er=5;
e0=8.85*10^-12;
d=0.2*10^-3;                //Distance between plates
C=(e0*er*A*n)/d;            //Calculating capacitance of the capacitor
printf("Capacitance of capacitor = %f nF",C*10^9);
