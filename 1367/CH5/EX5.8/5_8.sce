//Find Glancing angle and Interplanar spacing of the crystal
//Ex:5.8
clc;
clear;
close;
w=0.824;//wavelength in angstorm
a1=8.58;//angle at n=1 in degrees
n1=1;
n3=3;
a3=asind((n3/n1)*sind(a1));//angle at n=3 in degrees
disp(a3,"Glancing angle for third order diffraction = ");
d=w/(2*sind(a1));//in angstorm
disp(d,"Interplanar spacing of the crystal (in Angstorm) = ");