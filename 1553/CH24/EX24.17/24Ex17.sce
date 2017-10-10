//chapter 24 Ex 17

clc;
clear;
close;
rate=24.68; costfield=333.18;
Area=(costfield/rate)*10000;
altitude=sqrt(Area/((1/2)*3));
base=3*altitude;
mprintf("The altitude and base are %d meter and %d meter",altitude,base);
