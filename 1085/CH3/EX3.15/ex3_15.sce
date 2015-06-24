//Exam:3.15
clc;
clear;
close;
r=1.245*10^(-7);//Radius of the Ni atom(in mm)
NA_100=1+(1/4)*4;//Numbers of atom in (100) plane
a=4*r/(2)^(1/2);//Lattice constant(in mm)
Area=a^2;
P_density=NA_100/Area;
disp(P_density,'the planer density of Ni (in atoms per mm^2)=');