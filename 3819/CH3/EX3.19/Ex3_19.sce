// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.19
//Data given in the Problem
theta=60;
s=sin(theta/180*%pi);
hh=poly(0,"hh");
AC=hh/s;
H=hh/2;
b=1;
d=AC;
IG=b*d^3/12;
//COP=(IG/(A*H)+H)
//COP=(h/sin(theta/180*%pi)^3/12/(h/sin(theta*%pi/180)/(h/2)+h/2
//We know that COP is equal to (h-3),THAT IS ,the depth of centre of pressure
//hence
function f=F(hh)
f=((hh/s)^3/12*s^2/(hh/s*hh/2))+(hh/2)-(hh-3);
endfunction
hh=100;
y=fsolve(hh,F);
mprintf("The height of water for tipping the gate is %f m",y)
