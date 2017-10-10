clc;
clear;
m=9.1*10^-31 //mass in kg
h=6.63*10^-34 //Plancks constant in J-s
e=1.6*10^-19 //charge in C
n=1 //first reflection maximum
tetha=60 //glancing angle
V=344 //voltage in V

//calculation
d=((n*h)/(2*sind(60)*sqrt(2*m*e*V)))/10^-9
mprintf("The interplanar distance is = %1.3f nm",d)
