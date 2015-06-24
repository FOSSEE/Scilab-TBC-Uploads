//Ex:7
clc;
clear;
close;
h=1000;//Altitude in km
R_e=6378;//Radius of the earth in km
a=R_e+h;//Height of satellite from centre of the earth in km
u=3.986*10^5;//Kepler's const in km^3 per sec^2
T=(4*%pi*%pi*a^3/u)^(1/2);//Time period in km
v_s=((2*%pi*a)/T);
printf("Velovity of satellite = %f km/s",v_s);