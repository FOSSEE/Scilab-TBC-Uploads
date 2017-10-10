// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.17

//Data given in the Problem
l=5
w=2
theta=60
g=9.81
W=5000*g
dens=1000

//Calculations
h=poly(0,"h")           //depth of the CG  of the body
AD=h/sin (theta*%pi/180)
A=AD*w
H=h/2               //depth of CG of the immersed area
F0=dens*g*A*H
IG=w*AD^3/(12)
COP=IG*(sin(60/180*theta))^2/(A*H)+H        //COP of the immersed surface
//Using Geometry,
CH=COP
CD=CH/sin(theta/180*%pi)
AC=AD-CD
//Taking the moments about the hinge(
function f=F(h)
    f=(W*l-(dens*g*w*h/sin(theta/180*%pi)*h/2*2/(3^1.5)*h));
endfunction
h=1
y=fsolve(h,F)
mprintf("The value of h is %f m \n",y)

