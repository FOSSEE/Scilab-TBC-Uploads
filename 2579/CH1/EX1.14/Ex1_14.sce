//Ex:1.14
clc;
clear;
close;
r=5*1000;// distance in m
r1=10*1000;// distance in m
W=1;
Erms=(sqrt(90*W))/r;// electric field strength at a distanve 5 km
Erms1=(sqrt(90*W))/r1;// electric field strength at a distanve 10 km
E_E1=Erms/Erms1;// the ratio of electric field strengths
Erms=10;// electric field strength in mV/m
Erms2=Erms/E_E1;// electric field strength in mV/m at a distance of 10 km
printf("The electric field strength in mV/m at a distance of 10 km = %d mV/m", Erms2);