//Ex:2.38
clc;
clear;
close;
// Power at point P, i.e.,distance r meters
// w=wt/4*pi*r^2
// here, wt=PG
// now, w=EH and E/H=n then w=E^2/n where n=120*pi
// E^2=wn=(wt/4*pi*r^2)n=(PG/4*pi*r^2)n=120*pi*PG/4*pi*r^2=30*PG/r^2
printf("The field strength is, E=sqrt(30*P*G)/r^2 V/m");