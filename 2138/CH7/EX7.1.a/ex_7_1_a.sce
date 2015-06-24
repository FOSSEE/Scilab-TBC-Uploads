//Example 7.1.a: e.m.f
clc;
clear;
close;
// given data:
p=8; // number of poles
a=p; // in lap winding
fi=15*10^-3; // in wb
N=500; // rev/min
Z=800; // number of conductors on armature
emf=(fi*Z*N*p)/(60*a);// when the armature is lap wound
disp(emf,"emf(V) = ")
