
//To Find Magnetic Field between the wires

//Example 35.2

clear;

clc;

i=10;//Current flowing through wires in Amperes

l=5*10^-2;//Seperation between two wires in metres

d=l/2;//Distance of Point P from both wires in metres

k=2*10^-7;// Constant k=(u0/(2*%pi))

B=k*i/d;//Magnetic Field at point P due to each wire

Bnet=2*B;//Net Magnetic Field at Point P due to both wires

printf("Magnetic Field at point P between the two wires = %.0f uT",Bnet*10^6);
