//Exam:3.12
clc;
clear;
close;
Density=2.7;//(in g/cm^3)
n=4;
m=26.98;//atomic weight of Al
N_a=6.023*10^(23);//avogadro number
a=((n*m/(Density*N_a))^(1/3));//Lattice parameter(in Cm)
A=a*10^(8);//Lattice parameter(in A)
disp(A,'radius(in A)=');
r=A/(2*1.414);//radius for fcp structure
disp(2*r,'Diameter(in A)=');