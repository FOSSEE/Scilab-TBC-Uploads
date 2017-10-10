//Equivalent k of a suspension system
//Exa_1_2
clc;
clear;
close;
G=80e+9 ;        //shear modulus of spring material in N/m^2
n=5;            //effective turns
D=0.2;        //mean coil diameter in m
d=0.02;        //wire diameter in m
k=(d^4*G)/(8*D^3*n);        //stiffness of each helical spring
//the three springs are identical and parallel
keq=3*k;
disp(keq,"equivalent spring constant of the suspension system in N/m =");