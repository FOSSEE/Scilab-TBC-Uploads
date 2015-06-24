//Example 5.1
//Hurwitz stability test in scilab
clear;clc;
xdel(winsid());

s=%s
A=s^4+8*s^3+18*s^2+16*s+4 //characteristic equation

//coefficients of characteristic equation
a0=det(coeff(A,4))
a1=det(coeff(A,3))
a2=det(coeff(A,2))
a3=det(coeff(A,1))
a4=det(coeff(A,0))

D=[a1 a0 0 0;a3 a2 a1 a0;0 a4 a3 a2;0 0 0 a4]//Hurwitz determinant

//minors of hurwitz determinant
D1=[a1]
det(D1)
D2=[a1 a0;a3 a2]
det(D2)
D3=[a1 a0 0;a3 a2 a1;0 a4 a3]
det(D3)
D4=[a1 a0 0 0;a3 a2 a1 a0;0 a4 a3 a2;0 0 0 a4]
det(D2)
