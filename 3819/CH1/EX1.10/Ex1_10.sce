// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.10


//Given Data Set in the Problem
density=981
ss=0.2452
vel_grad=0.2

//Calculations
visc=ss/(vel_grad)
kin_visc=visc/density
mprintf("The Kinematic viscosity of the oil is %f stokes\n",kin_visc*10^4)
