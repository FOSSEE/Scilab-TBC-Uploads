// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.19

//Data given in the Problem
theta=60
AC=h/sin(theta*%pi/180)
s=sin(theta/180*%pi)
h=poly(0,"h")
H=h/2
b=1
d=AC
A=AC
IG=b*d^3/12
//COP=(IG/(A*H)+H)
//COP=(h/sin(theta/180*%pi)^3/12/(h/sin(theta*%pi/180)/(h/2)+h/2
//We know that COP is equal to (h-3),THAT IS ,the depth of centre of pressure
//hence
function f=F(h)
f=((h/s)^3/12*s^2/(h/s*h/2))+(h/2)-(h-3);
endfunction
h=100;
y=fsolve(h,F)
mprintf("The height of wahter for tipping the gate is %f m",y)
