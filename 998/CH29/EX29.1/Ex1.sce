//Ex:1
clc;
clear;
close;
u=3.986*10^5;//kepler's const in km^3sec^(-2)
T_P=86164.09;// time period of earth in sec
a=(T_P^2*(u/(4*%pi*%pi)))^(1/3);
printf("Radius of geostationary satellite = %d kilometer",a);