//Exam:8.3
clc;
clear;
close;
Y=210*10^9;//Young's modulus of a certain material(in N/m^2)
E=10;//true surface energy (in J/m^2)
c=(100/2)*10^-6;//Crack (in meter)
pi=3.14;
F_strength=(2*Y*E/(pi*c))^(1/2);
disp(F_strength,'fracture strength(in Newton/m^2)=');