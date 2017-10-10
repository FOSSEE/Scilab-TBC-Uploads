// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.5

//Given Data Set in the Problem
dens=1000
g=9.81
SG=13.6
v_m=0.4
v_w=0.6
V=poly(0,"V")

//calculations
//For equilibrium of the body ,toatl buoyancy=weight of the body
//buoyancy due to water
F_w=dens*g*0.6*V
//buoyancy due to mercury
F_m=SG*dens*g*0.4*V

//Total force
F_tot=F_m+F_w
dens_body=(F_tot/(V*g))
mprintf("The density of the body is %f kg/m^3\n",horner(dens_body,1))
