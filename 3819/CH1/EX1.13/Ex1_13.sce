// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.13


//Given Data Set in the Problem
y=poly(0,"y")
u=3*y/4-y^2
visc=8.5/10

//Calculations
du_dy=(horner(derivat(u),0.15))

ss=visc*du_dy
mprintf("The shear stress at y=0.15 m is %f N/m^2 \n",ss)
