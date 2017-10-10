clc;funcprot(0);//EXAMPLE 9.2
// Initialisation of Variables
d=18;........//Diameter of the casting in in
x=2;........//Thickness  of the casting in in
B=22:............//Mold constant of casting
V=(%pi/4)*d^2*x;......//Volume of the casting in in^3
A=2*(%pi/4)*d^2+%pi*d*x;........//The surface area of the casting in contact with the mold
t=B*(V/A)^2;........//
tr=0.75*t;.......//
Vr/Ar=sqrt(tr/B);............//
x2=(Vr*d)/(2*(Ar*d-4*Vr));........//
disp(x2,)
