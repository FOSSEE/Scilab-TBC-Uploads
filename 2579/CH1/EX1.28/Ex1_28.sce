//Ex:1.28
clc;
clear;
close;
// G=Pr/pi
// G=Pr/(Wi/4*%pi*r^2)
// G=4*%pi*r^2*Pr/Wi
// Pr=(30*Irms^2/%pi*r^2)*((cos(%pi/2*(cos(x))))^2/(sin(x)^2)
// this is max when x=90 degree
// then Pr=(30*Irms^2/(%pi*r^2))
// Wi=73.14*Irms^2
// then G=(4*%pi*r^2*30*Irms^2)/(73.14*Irms^2*%pi*r^2)
// G=120/73.14
G=120/73.14;// Gain
g=10*log(G)/log(10);// Gain in dB
printf("The Gain = %f dB", g);