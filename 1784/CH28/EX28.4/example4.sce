//chapter 28
//Example 4
clc
//given
r=6.9*10^-15 //radius of the gold nucleus in meter
Z=79 //gold atomic number
e=1.6*10^-19 //charge in coul
q=Z*e //total positive charge in coul
E=(9.0*10^9)*q/r^2
disp("Electric field strength at the surface of the gold atom in nt/coul is")
disp(E)