//Example 11.6
//Jury's stability test
clear;clc;
xdel(winsid());

z=%z;
F=4*z^4+6*z^3+12*z^2+5*z+1
//equating the equation F with a4*z^4+a3*z^3+a2*z^2+a1*z3+a0.
a0=1
a1=5
a2=12
a3=6
a4=4

b0=[a0 a4;a4 a0]
det(b0)
b1=[a0 a3;a4 a1]
det(b1)
b2=[a0 a2;a4 a2]
det(b2)
b3=[a0 a1;a4 a3]
det(b3)

c0=[det(b0) det(b3);det(b3) det(b0)]
det(c0)
c1=[det(b0) det(b2);det(b3) det(b1)]
det(c1)
c2=[det(b0) det(b1);det(b3) det(b2)]
det(c2)

disp("det(a0)<det(a4)=satisfied")
disp("det(b0)>det(b3)=satisfied")
disp("det(c0)<det(c3)=not satisfied")

disp("The system is unstable")

