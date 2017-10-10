
//To Calculate the Magnitude of the Magnetic Field at a point on its Axis at a distance of 20cm from it.

//Example 36.3

clear;

clc;

m=12;//Pole Strength of Magnet in A-m

l=0.05;//Magnetic Length of Magnet in metres

d=0.2;//Distance of the given point from center of magnet in metres

k=1*10^-7;//Constant (u0/(4*pi))

M=2*m*l;//Magnetic Moment of the Magnet

B=k*2*M*d/((d)^2-(l)^2)^2;//Magnetic Field at the Point 20 cm from the centre

printf("Magnitude of the Magnetic Field at a point of 20 cm from the center of magnet = %.1f*10^-5 T",B*10^5);
