// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.16


//Given Data Set in the Problem(SI Units)
F1=40
F2=200
u1=50/100

//Calculations
//We know, Shear stress=Force/Area=viscosity*(Velocity Gradient)
//ie,  F/A=viscosity*(u/y)
//F/u=Viscosity*(A/y)
//F1/u1=F2/u2=constant
u2=F2*u1/F1
mprintf("The Speed of the sleeve when a force of 200N is applied is %f cm/s",u2*100)


