// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.30

//Data given in the Problem
dens=1000
g=9.81
b=1
y0=9

//Calculations
//1)
h=y0/2
A=y0*1
F_x=dens*g*A*h
mprintf("The  thrust is %f N in x direction \n",F_x)
//2)
F_y=dens*g*integrate("2*y^0.5","y",0,9)
mprintf("The  thrust is %f N in y direction \n",F_y)
F=(F_x^2+F_y^2)^0.5
theta =(atan(F_y/F_x))*180/%pi
mprintf("The Resultant force is %f kN at an angle of %f degrees \n",F*10^-3,theta)
