
//To Calculate Magnetic Field due to a 1cm piece of Wire

//Example 35.1

clear;

clc;

i=10;//Current in the Wire in Amperes

dl=10^-2;//Length of the wire in metres

r=2;//Distance of point P from wire in metres

theta=%pi/4;//Angle made by point P with the wire

k=1*10^-7;//Constant (u0/(4*pi))

dB=(k*i*dl*sin(theta))/r^2;//Formula for finding the magnetic field

printf("Magnetic Field due to a piece of Wire = %.1f*10^-9 T",dB*10^9);
