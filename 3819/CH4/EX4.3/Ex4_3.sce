// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.3

//Given Data Set in the Problem
dens=1000
g=9.81
w_s_air=392.4
w_s_water=196.2

//calculations
vol_disp=w_s_water/(dens*g)
mprintf("The colume of stone is %f m^3 \n",vol_disp)
dens_stone=(w_s_air/g)/vol_disp         //finding stones density
sg=dens_stone/dens
mprintf("The  SG of stone is %f \n",sg)
