//Exam:3.14
clc;
clear;
close;
a=3.03*10^(-7);//lattice constant(in mm)
N_100=1/(a^2);//Number of atoms in the (100) plane of a simple cubic structure
N_110=0.707/(a^2);//Number of atoms in the (110) plane of a simple cubic structure
N_111=0.58/(a^2);//Number of atoms in the (111) plane of a simple cubic structure
disp(N_100,'Number of atoms in the (100) plane of a simple cubic structure(in per mm^2)=');
disp(N_110,'Number of atoms in the (110) plane of a simple cubic structure(in per mm^2)=');
disp(N_111,'Number of atoms in the (111) plane of a simple cubic structure(in per mm^2)=');