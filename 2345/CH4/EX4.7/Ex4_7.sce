//Finding charge
//Example 4.7(pg 114)
clc
clear
//q1=q2=q
pi=3.14;
d=0.2;// in meters
K=9*10^9;// here K=1/4*pi*Eo*Er constant
F=9.81*10^-1;// in newtons or 10^-1 kgm
q=sqrt((F*(d^2))/K)
printf('Thus charge is %e in coulomb',q)
