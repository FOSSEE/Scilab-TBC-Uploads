//clear//
//Caption:Power coupled between two graded index fibers
//Example5.4
//page205
clear;
clc;
close;
a =1e-06; //core radii in meters
d = 0.3*a;//axial offset
PT_P = (2/%pi)*(acos(d/(2*a))-(1-(d/(2*a))^2)^0.5*(d/(6*a))*(5-0.5*(d/a)^2));
PT_P_dB = 10*log10(PT_P)
disp(PT_P_dB,'Optical power coupled from first fiber into second fiber in dB is=')
//Result
//Optical power coupled from first fiber into second fiber in dB is =   - 1.2597813  
