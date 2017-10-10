//Example 5_5
clc();
clear;
//To find the lattice parameter of lead
theta=30  //units in degrees
n=1
l=1.54*10^-10    //units in meters
d=(n*l)/(2*sin(theta*%pi/180))
h=2
k=2
l=0
a=d*(sqrt(h^2+k^2+l^2)) //units in meters
a=a*10^10      //units in Armstrongs
printf("Lattice parameter is a=%.1f A",a)
//in text book the answer is printed wrong as 4.1A The answer is  4.4A nm
