//Example 7.1.b: e.m.f if the armature is wave wound
clc;
clear;
close;
// given data:
p=8; // number of poles
a=2; // in wave winding
fi=15*10^-3; // in wb
N=500; // rev/min
Z=800; // number of conductors on armature
emf=(fi*Z*N*p)/(60*a);// when the armature is wave wound
disp(emf,"emf(V) = ")
