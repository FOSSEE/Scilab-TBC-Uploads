
//To Calculate the Time required by the Electron to receive sufficent energy to come out of the metal

//Example 42.3

clear;

clc;

r=1.0*10^-9;//Radius of Circle in metres on the surface occupied by a single electron

d=5.0;//Distance between Monochromatic Light source and Metal Surface in metres

std=%pi*r^2/d^2;//Solid Angle subtended at the source by the Circular Area in sterdian

P=1*10^-3;//Power of monochromatic light source in Watts

E=std*P/(4*%pi);//Energy heading towards the Circular Area per second

phi=2*1.6*10^-19;//Work Function of Metal in Joules

t=phi/(E*3600);//Time required by the electron to recieve sufficient energy to cmome out of the metal in hours

printf("Time required by the electron to recieve sufficient energy to come out of the metal =%.2f hours",t);
