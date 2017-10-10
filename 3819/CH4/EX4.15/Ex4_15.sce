// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.15

//Given Data Set in the Problem
dens=1000
g=9.81
SG1=0.6
SG2=0.9

//calculations
L=poly(0,"L")
d=poly(0,"d")
AG=L/2
h=%pi/4*SG1*dens*g*L/(%pi/4*SG2*dens*g)
AB=h/2
BG=AG-AB
//for ,meta centric height ;
I=%pi/64*d^4
function [f]=F(k)
    f(1)=(%pi/64*k(1)^4)/(%pi/4*k(1)^2*(%pi*4*SG1*dens*g*k(2)/(%pi/4*SG2*dens*g)))-k(2)/6
    f(2)=0          //k(1)=d and k(2)=L
endfunction
k=[100 100];
y=fsolve(k,F);
