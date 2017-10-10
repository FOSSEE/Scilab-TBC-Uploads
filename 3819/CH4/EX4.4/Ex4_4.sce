// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.4

//Given Data Set in the Problem
dens=1000
g=9.81
v_body=1.5*1*2
w_body=196.2

//calculations
w_disp=dens*g *v_body
//weight of body in air=wight of water displaced + weight in water.hence
w_air=w_body+w_disp
mass=w_air/g
dens_body=mass/v_body
SG=dens_body/dens
mprintf("The Specific Gravity of the body is %f \n",SG)
