//chapter 29
//example 4
clc
//given
r=6.6*10^-15 //radius of the gold nucleus in meter
Z=79 //gold atomic number
e=1.6*10^-19 //charge in coul
q=Z*e //total positive charge in coul
epsilon0=8.85*10^-12 //coul2/nt-m2
V=q/(4*%pi*epsilon0*r)
disp(V,"Electric potential at the surface of the nucleus in volts is")
