// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.4

//Given Data Set in the Problem
dy=0.025/1000
v=60/100
ss=2

//Calculations
//To find the Viscosity
//Shear Stress=Viscosity * Velocity gradient
du=(60-0)/100
vel_grad=du/dy              //Defining velocity gradient across the plate
visc=ss/vel_grad
visc_poise=visc*10          //Converting viscosity to poise from Ns/m^2
mprintf("The Viscosity between the plates is %f poise",visc_poise)



