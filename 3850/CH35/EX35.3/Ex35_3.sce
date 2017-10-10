
//To Find the Magnitude of Magnetic Force experienced by 10 cm of a wire

//Example 35.3

clear;

clc;

i=5;//Current in Amperes

d=2.5*10^-2;//Separation between the wires in metres

k=2*10^-7;// Constant k=(u0/(2*%pi))

B=k*i/d;//Magnetic Field at the site of one wire due to other in T

l=10*10^-2;//length of the wire in metres

F=i*l*B;//Magnetic force experienced by the 10 cm of the wire due to the other

printf("Magnetic force experienced by the 10 cm of the wire due to the other = %.1f*10^-5 N",F*10^5);
