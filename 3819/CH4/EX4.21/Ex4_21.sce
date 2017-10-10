// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.21

//Given Data Set in the Problem
dens=1000
g=9.81
K=8
GM=70/100

//calculations
T=2*%pi*(K^2/GM/g)^0.5
mprintf("The Time period of Oscillation is %f seconds\n",T)
