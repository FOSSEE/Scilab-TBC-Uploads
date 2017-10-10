// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.2

//Given Data Set in the Problem
dens=1000
g=9.81
d=0.6
l=5
SG=0.7
r=0.3
//W=theta angle
//calculations

//Equating the Area of ADCA from using geometry,we get;
function[f] = F(W)
    f=0.1979-((%pi*0.3^2*(1-W/180))+0.3^2*cos(W/180*%pi)*sin(W/180*%pi))
endfunction
W= 10;
W = fsolve(W,F)
//so, h=r+r*cos(theta)
h=r+r*cos(W/180*%pi)
mprintf("\nThe depth of wooden log in water is %f m\n",h)
