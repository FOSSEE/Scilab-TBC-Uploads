//chapter 29
//example 8
clc
//given
q1=1.6*10^-19 //charge in coul
q2=1.6*10^-19 //charge in coul
r=6.0*10^-15 //seperation b/w two protons in meter
epsilon0=8.85*10^-12 //coul2/nt-m2
U=(q1*q2)/(4*%pi*epsilon0*r)
disp("Mutual electric potential energy of two proton in joules is")
disp(U)
V=U/q1
disp(V,"Mutual electric potential energy of two proton in ev is")
