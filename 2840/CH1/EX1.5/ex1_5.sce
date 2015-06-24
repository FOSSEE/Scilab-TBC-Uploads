clc;
clear all;
deltav = 0.5; // change in volume
v = 200; // initial volume in litres
deltap = 100*1.013e5 // change in pressure in Pa
k = (deltap/(deltav/v));
disp('Pa',k,'Bulk modulus of liquid is ')
