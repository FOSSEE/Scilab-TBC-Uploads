//Ex:53
clc;
clear;
close;
G=6.67*10^(-11);//Gravitation const in N-m^2/kg^2
a_1=18000;//semi major axis for satellite-1
a_2=24000;//semi major axis for satellite-2
t2_t1=(a_2/a_1)^(3/2);//The ratio of orbital periods of given two satellite
printf("Orbital periods ratio of two satellite =%f",t2_t1);
printf("\n thus orbital period of satellite_2 is 1.54 times that of satellite_1");