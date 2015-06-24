//Exa 6.14
clc;
clear;
close;
//given :
Gp=28 // power gain
Lm=poly(0,'Lm') // defining Lm as lambda
d=Lm/2 // length of dipole
//formula : Gp=4*(L/lambda)
L=Gp*Lm/4 // array length
disp(L,"array length(where Lm is wavelength in m):")
N=7*2 // Number of elements in the array when spaced at lambda/2
disp(N,"Number of elements in the array when spaced at lambda/2:")
// formula : B.W=2*sqrt((2*/N)*(lambda/d))
BW=2*sqrt(horner((2*Lm/(N*d)),1)) // null-to-null beam width in radians
BW_d=BW*180/%pi // null-to-null beam width in degrees
disp(BW_d,"null-to-null beam width in degrees:")



// Answer of null-to-null beam width in degrees is rounded-off in book.
