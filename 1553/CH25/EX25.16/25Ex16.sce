//Ch25_Ex16
clc;
clear;
close;
vol=2.2/1000; //converting into cubic meter
d=0.5/100;    //diameter in meter
r=d/2;        //radius
h=vol/(%pi*r^2);
mprintf("The length of wire is %.0f meter",h);
