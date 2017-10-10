clc;funcprot(0);//EXAMPLE 9.2
//page 255
// Initialisation of Variables
d=18;//Diameter of the casting in in
x=2;//Thickness  of the casting in in
B=22//Mold constant of casting
V=(%pi/4)*d^2;//Volume of the casting in in^3
A=2*(%pi/4)*d^2+%pi*d*x;//The surface area of the casting in contact with the mold
x=(0.708*A)/V
disp(x,"The thickness in inches=")