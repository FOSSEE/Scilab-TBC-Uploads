//Exa 6.13
clc;
clear;
close;
Lm=poly(0,'Lm') // defining Lm as lambda
d=1.5*Lm // diameter of antenna in m
a=d/2 // radius of antenna in m
// formula : Rr=3720*(a/Lm)
Rr=3720*(a/Lm) // radiation resistance of loop antenna in ohm
Rr=horner(Rr,1)
// formula : D=4.25*(a/Lm)
D=4.25*(a/Lm)// Directivity of the loop antenna
D=horner(D,1)
disp(Rr,"radiation resistance of the loop antenna in ohm:")
disp(D,"Directivity of the loop antenna:")
