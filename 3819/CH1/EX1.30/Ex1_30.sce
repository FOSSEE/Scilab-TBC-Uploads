// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.30

//Given Data Set in the Problem
h=0.2*10^-3
st=0.0725
dens=1000
g=9.81

//Calculations
//Using rise=4*surface tension/(density *g *diameter of capillary)
d=4*st/(dens*g*h)
mprintf("The diameter oif the capillary for the rise of 0.2 mm is %f cm",d*100)


