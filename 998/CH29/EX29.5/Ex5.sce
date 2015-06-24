//Ex:5
clc;
clear;
close;
T=86400;//Orbital period in sec
u=3.986*10^5;//Kepler's const in km^3 per sec^2
a=(T^2*u/(4*%pi^2))^(1/3);//Radius of orbital in km
printf("Radius of orbital =%d km",a);