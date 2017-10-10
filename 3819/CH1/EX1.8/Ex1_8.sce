// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.8

//Given data set in the problem
dy=1.25/100
visc=14/10
u=2.5

//Calculations 
ss=visc*((u-0)/dy)               //shear stress=viscosity*(velocity gradient across the oil)
mprintf("The shear stress between the plates is %f N/m^2",ss)

