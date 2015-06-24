clc;
clear all;
r=1.278*1e-8 ;//atomic radius in cm
M=63.5; //atomic weight
N=6.023*1e23; //avogadro number
n=4//for fcc n=4
a=4*r/(sqrt(2));
density=n*M/(N*a^3);//Density of copper
disp(+'g/cc',density,'Density of copper =')
