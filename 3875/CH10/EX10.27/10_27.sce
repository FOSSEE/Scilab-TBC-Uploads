clc;
clear;
m=1.675*10^-27//mass of neutron in kg
h=6.63*10^-34 //Plancks constant in J-s
n=1 //first reflection maximum
KE=0.04*1.6*10^-19 //energy in J
d=0.314*10^-9 //interplanar distance in m

//calculation

phi=asind((n*h)/(2*d*sqrt(2*m*KE)))
mprintf("The glancing angle is = %2.1f degree",phi)
//The answer varies due to round off error.

