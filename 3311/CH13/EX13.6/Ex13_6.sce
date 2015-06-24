// chapter 13
// example 13.6
// Design a suitable selenium voltage protection circuit and compute energy dissipated per plate
// page-814
clear;
clc;
// given
Edc=440; // in V
Imax=120; // in A
R=0.175; // in ohm
T=25; // in ms (time constant)
V=40; // in V
// calculate
T=T*1E-3; // changing unit from ms to s
n=Edc/V; // calculation of number of plates in each branch
N=3*n; // calculation of total number of plates
L=T*R; // calculation of armature circuit inductance
E_stored=(1/2)*L*Imax^2; // calculation of energy stored in armature
E_dissipated=E_stored/11; // calculation of energy dissipated per plate
printf("\nThe number of plates in each branch is \t n=%.f",n);
printf("\nThe total number of plates is \t N=%.f",N);
printf("\nThe armature circuit inductance is \t L=%.2f mH",L*1E3);
printf("\nThe energy stored in armature is \t E_stored=%.1f W",E_stored);
printf("\nThe energy dissipated per plate is \t E_dissipated=%.2f W",E_dissipated);
// Note : The value of time constant given in the book is 25 ms but in calculation the author has used 30 ms. Thats why answers in the book are wrong