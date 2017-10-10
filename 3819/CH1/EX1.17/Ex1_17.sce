// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.17


//Given Data Set in the Problem(SI Units)
d=15/100
d_outer=15.10/100
l=25/100
T=12
N=100


//Calculations 
u_tang=%pi*d*N/60
Area_surface=%pi*d*l
du=u_tang-0
dy=(d_outer-d)/2
        //We know, Shear stress=Force/Area=viscosity*(Velocity Gradient)
        //also, Torque=Force*Diameter/2.......or.. Force=(Torque*2)/Diameter
         //hence,  2*Torque/(diameter*area)=Viscosity*(Vel. gradient)
visc=2*T/(d*Area_surface*du/dy)
mprintf("The Viscosity of the  liquid is %f poise",visc*10)
