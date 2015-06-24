clc;
clear all;
D=0.1;//focal length of lens
lemda=14400*1e-10;//wavelength in meters
p=100*1e-3;//power of laser beam
d=10*1e-3;//aperture in meter
th=lemda/d;//angular speed
disp('rad',th,'angular speed is=');
aos=(D*th)^2;//area of spread 
disp('m^2',aos,'area of spread is=');
I=p/aos;//'intensity
disp('W*m^-2',I,'intensity is=');

