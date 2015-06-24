//chapter 28
//Example 3
clc
//Given
r=1*10^-10 //radius of the atom in meter
Z=79 //gold atomic number
e=1.6*10^-19 //charge in coul
q=Z*e //total positive charge in coul
E=(9.0*10^9)*q/r^2
disp(E,"Electric field strength at the surface of the gold atom in nt/coul is")
