//chapter 29
//example 5
clc
//given
q1=1.0*10^-8 //in coul
q2=-2.0*10^-8 //in coul
q3=3.0*10^-8 //in coul
q4=2.0*10^-8 //in coul
a=1 //side of square in meter
epsilon0=8.85*10^-12 //coul2/nt-m2
//refer to the fig 29.7
r=a/sqrt(2) //distance of charges from centre in meter
V=(q1+q2+q3+q4)/(4*%pi*epsilon0*r)
disp(V,"Potential at the center of the square in volts is")
