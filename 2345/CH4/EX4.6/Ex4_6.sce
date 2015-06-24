//Finding force
//Example 4.6(pg 113)
clc
clear
q1=1;// in coulomb
q2=1;// in coulomb
Eo=8.854*10^-12;// in Farad per meter
Er=1;
d=1// in meter
pi=3.14;
// F is the force between 2 charges in NEWTONS
F=(q1*q2)/(4*pi*Eo*Er*d^2)

printf('Thus the force between 2 charges is %e',F)
