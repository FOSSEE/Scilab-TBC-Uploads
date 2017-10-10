
//To Find the Time Constant and Time taken for Charge Storage

//Example 32.9

clear;

clc;

C=100*10^-6;//Capacitance of the Capacitor in Faraday

R=2;//Internal resistance of battery in Ohms

T0=R*C;//Time constant in seconds

printf("(a) Time constant = %f us",T0*10^6);

E=12;//EMF of the bettery

q=0.99*E*C;//Charge at time (t)

t=-log(1-(q/(E*C)))*T0;//Time taken before 99% of the Maximum Charge is stored on the Capacitor

printf("\n(b) Time taken before 99 percent of the Maximum Charge is stored on the Capacitor = %.2f ms",t*10^3);

