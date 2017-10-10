// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.21

//Given Data Set in the Problem
V=1/1000
SG=0.7
d_water=1000
g=9.81

//Calculations
// Density of Petrol
d=SG*d_water
mprintf("The Density of Petrol is %f \n",d)
//Specific Weight of Petrol
w=d*g
mprintf("The Specific weight of Petrol is %f \n",w)
// Weight of 1 litre of Petrol
W=w*V
mprintf("The Weight of 1 litre of Petrol is %f \n",W)
