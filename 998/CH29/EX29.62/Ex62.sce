//Ex:62
clc;
clear;
close;
G=6.67*10^(-11);//Gravitation const in N-m^2/kg^2
a_1=16000;//semi major axis for satellite-1
a_2=24000;//semi major axis for satellite-2
t1=10;//the orbital period of satellite-1 in hours
t2=t1*(a_2/a_1)^(3/2);//The ratio of orbital periods of given two satellite
printf("Orbital periods of satellite-2=%f hours",t2);