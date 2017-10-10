clc;
clear;
tetha=55 //braggs angle in degree
KE=0.25*1.6*10^-19 //enrgy in J
m=1.675*10^-27//mass of neutron in kg
h=6.63*10^-34 //Plancks constant in J-s
n=1 //first reflection maximum

//calculation
d=((n*h)/(2*sind(tetha)*sqrt(2*m*KE)))
mprintf("The interplanar distance is = %1.1e m",d)
