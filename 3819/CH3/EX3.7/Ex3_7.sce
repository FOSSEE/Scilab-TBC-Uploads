// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.7

//Data given in the Problem
b=2
d=1.2
SG1=1.45
dens=1000
g=9.81

//Calculations
//1)
A=b*d
dens1=SG1*dens
h1=1.5+(d/2)
F1=dens1*g*A*h1
dens2=1000
h2=1/2*d
F2=dens2*g*A*h2
F=F1-F2
mprintf("The resultant force on the gate is %f N\n",F)

//2)
IG=b*d^3/12
H1=IG/(A*h1)+h1
//The distance of F1 from the hinge is ((1.5+1.2)-H1) metres
x1=((1.5+1.2)-H1)
//F2 acts at a dephth H2 from the surface 
H2=IG/(A*h2)+h2
//x2 is distance of F2 from hinge
x2=d-H2
//Resultant force F1-F2 acts at a distance equal to d_res
d_res=(F1*x1-F2*x2)/(F1-F2)
mprintf("Resultant force acts at %f m above the hinge \n",d_res)

//3)
//WE Know that F*d=(F1*x1-F2*x2) for the gate to just open
F=(F1*x1-F2*x2)/d
mprintf("The force required to open tha gate is %f N",F)
