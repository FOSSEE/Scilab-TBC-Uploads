//Exam:9.3
clc;
clear;
close;
P=4;//Number of phases exhibit by a material
F=0;//Minimum degrees of freedom
//modified form of the phase rule F=C-P+1
C=F+P-1;//minimum number of components in the system
disp(C,'the minimum number of components in the system=')