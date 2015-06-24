clc;
clear all;
D=4*1e8;//distance between earth and moon in m
lemda=16000*1e-10;//wavelength in meters
d=1e-3;//aperture in meter
th=lemda/d;//angular speed
disp('rad',th,'angular speed is=');
aos=(D*th)^2;//area of spread 
disp('m^2',aos,'area of spread is=');
//there is variation in the answer than book..checked in calculator too..
