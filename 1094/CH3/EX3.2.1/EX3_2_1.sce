//EXA.3.2.1
clc;
clear;
close;
//refer to figure3.2.2
theta=30 //angle of inclination    
B=.8 //magnetic field (in T)
I=10 //current (in A)
L=2 //length of conductor(in m)
F=B*I*L*sind(theta)
disp(F, 'force on conductor (in N)=')