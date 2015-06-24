//Find Glancing angle and lattice parameter
//Ex:5.9
clc;
clear;
close;
a=17.03;//in degrees
w=0.71;//in angstorm
n=1;
d=n*w/(2*sind(a));//interplanar spacing in angstorm
disp(d,"Interplanar Spacing (in angstorm) = ");
// given that h^2+k^2+l^2=8
a=sqrt(8)*d;//in angstorm
disp(a,"Lattice parameter of the crystal (in Angstorm) = ");