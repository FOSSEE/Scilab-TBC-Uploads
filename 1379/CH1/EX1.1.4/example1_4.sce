

//exapple 1.4 
clc; funcprot(0);
// Initialization of Variable
d=0.05;
l=12;
per=100-2;
pi=3.1428
//calculation
s=sqrt(per/100/4*d^2);//radius of core of pure material
V=pi*d^2/4*l/(2*(1-(2*s)^2/d^2));
disp(V, "The volume of pure material so that 2% technical material appears at the end in (m^3):")
