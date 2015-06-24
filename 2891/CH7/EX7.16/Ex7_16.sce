//Exa 7.16
clc;
clear;
close;
Lm=poly(0,'Lm') // defining Lm as lambda
D_a=6*Lm // where D_a is mouth diameter in m and Lm is wavelength
// formula : HPBW=phi=70*(lambda/D_a)
phi=70*(Lm/D_a) // half power beam width in degrees
phi=horner(phi,1)
phi_not=2*phi // null-to-null beam width in degrees
// formula : D=6.4*(D_a/lambda)^2
D=6.4*(D_a/Lm)^2
D=horner(D,1)
disp(D,"Directivity:")
disp(phi,"half power beam width in degrees:")
disp(phi_not,"null-to-null beam width in degrees:")
