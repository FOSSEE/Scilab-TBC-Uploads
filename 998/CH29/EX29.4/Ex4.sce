//Ex:4
clc;
clear;
close;
h_p=1000;//perigee height in km
h_a=4000;//apogee height in km
R_E=6378.14;// radius of earth in km
a=(2*R_E+h_p+h_a)/2;//Semi major axis in km
u=3.986*10^5//km^3 per sec^2
T_P=(4*%pi^2*a^3/u)^(1/2);//Orbit period in sec
printf("Orbital period =%f sec",T_P);