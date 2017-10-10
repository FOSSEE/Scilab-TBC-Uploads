// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 3-Hydrostatic Forces on surfaces
// Problem 3.3

//Data given in the Problem
//d=depth
//d=width
//Centroid is 'p' metres below
b=poly(0,"b")
d=poly(0,"d")
p=poly(0,"p")

//Proof
h=p         //Depth of COP from the surface
I_G=horner(b,d)
I_G=b*d^2/12
A=horner(b,d)
A=b*d           //Area
H=horner(I_G,A,h))
H=I_G/(A*h)+h    //H is the depth of the centre of the pressure from the free surface
mprintf("The depth of the COP from free surface is found to be %p",H)
