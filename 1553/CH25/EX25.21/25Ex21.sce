//Ch25_Ex21
clc;
clear;
close;

r=7; h=24; w=1.25;
l=sqrt(h^2+r^2);
area=%pi*r*l;
lengthCanvas=area/w;
mprintf("The length of canvas is %.0f meter",lengthCanvas);
