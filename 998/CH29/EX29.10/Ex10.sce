//Ex:10
clc;
clear;
close;
y=0.0272;//Wavelength in meter
db_x=6-2;//Bandwidth of an aperture antenna in degree
d=75*y/db_x;//dimension in m
printf("Dimension of an antenna=%f meter",d);