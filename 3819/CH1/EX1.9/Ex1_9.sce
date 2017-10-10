// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.9


//Given Data Set in the Problem
Area=(60*60)/(100*100)
dy=12.5/1000
u=2.5
du=u-0
Force=98.1
ss=Force/Area

//Calculations
//1)Dynamic viscosity of Oil in poise
                                       //Shear Stress=(Force/Area)=viscosity*Velocity gradient
Dyn_visc=ss/(du/dy)
mprintf("The Dynamic Viscosity o fthe oil is %f poise \n",Dyn_visc*10)

//2) Kinematic viscosity of th eoil in stokes in SG of Oil is 0.95
SG=0.95
density_oil=SG*1000
Kin_visc=Dyn_visc/density_oil
mprintf("The Kinematic viscosity of the oil is %f stokes",Kin_visc*10^4)
