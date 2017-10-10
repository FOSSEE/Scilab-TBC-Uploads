
//To Calculate the Value of Horizontal Component of Earth's Magnetic Field

//Example 36.7

clear;

clc;

n=66;//Number of turns in Tangent Galvanometer

i=0.1;//Current passing through Galvanometer in Amperes

d=22*10^-2;//Diameter of coil in metres

theta=%pi/4;//Defelction in Galvanometer in radians

u0=4*%pi*10^-7;//permeability of vaccum

Bh=(u0*n*i)/(d*tan(theta));//Horizontal component of Earths Magnetic Field

printf("Horizontal component of Earth Magnetic Field = %.1f*10^-5 T",Bh*10^5);
