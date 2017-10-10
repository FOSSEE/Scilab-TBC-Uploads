// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.18

//Data given in the Problem
b=5
d=1.2
A=b*d
dens=1000
g=9.81

//Calculations
h=5-0.6*sin(45/180*%pi)
F=dens*g*A*h
IG=b*d^3/12
H=IG/(A*h)+h            //depth of centre of pressure
//from figure)
OH=H/sin(45/180*%pi)
BO=b/sin(45/180*%pi)
BH=BO-OH
AH=d-BH
//Now taking the moments
P=F*AH/d
mprintf("The Normal force applied to the gate at B is %f N\n",P)
