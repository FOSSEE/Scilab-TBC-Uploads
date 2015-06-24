//chapter 29
//example 9
clc
//given
q=1.0*10^-7 //charge in coul
a=10*10^-2 //side of triangle in meter
q1=q
q2=-4*q
q3=2*q
epsilon0=8.85*10^-12 //coul2/nt-m2
disp("Total energy is the sum of each pair of particles ")
U=(1/(4*%pi*epsilon0))*(((q1*q2)/a)+((q1*q3)/a)+((q2*q3)/a))
disp(U,"Mutual potential energy of the particles in joules is")
