// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.7

//Given Data Set in the Problem
Area=0.8*0.8
theta=%pi/6
W=300
du=0.3
dy=1.5/1000

//Calculations
W_alongPlane=W*cos(%pi/2-theta)
Shear_Force=W_alongPlane
ss=Shear_Force/Area
visc=ss/(du/dy)                     //Shear Stress+Viscosity * Velocity Gradient
mprintf("The Dynamic Viscosity of the Oil is %f poise",visc*10)
