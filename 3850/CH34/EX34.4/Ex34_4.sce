
//To Find the Magnetic Dipole Moment of the Current Loop

//Example 34.4

clear;

clc;

i=10.0*10^-9;//Current in the Circular Loop in Amperes

r=5.0*10^-2;//Radius of the Circular Loop  in metres

A=%pi*r^2;//Area of Circular Loop

u=i*A;//Magnetic Dipole Moment in A-m^2

printf("Magnetic Dipole Moment = %f*10^-11 A-m^2",u*10^11);
