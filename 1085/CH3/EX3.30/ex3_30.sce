//Exam:3.30
clc;
clear;
close;
angle=20.3;//in degree
wavelength=1.54;//in angstrom
n=1;
a=3.16;//lattice parameter in angstrom
d=n*wavelength/(2*sind(angle));//interplanar spacing
M_indices=a^2/(d^2);
disp(d,'interplanar spacing of reflection plane');
disp(floor(M_indices),'miller indices of the reflection plane');
disp((101),(110),(011));