// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.29

//Data given in the Problem
dens=1000
g=9.81
h=10
b=1
BC=10

//calculations
A=BC*1
H=h/2
F_x=dens*g*A*H
F_y=dens*g*integrate('3*y^0.5','y',0,10)
F=(F_x^2+F_y^2)^0.5
theta =(atan(F_y/F_x))*180/%pi
mprintf("The Resultant force is %f kN at an angle of %f degrees \n",F*10^-3,theta)
