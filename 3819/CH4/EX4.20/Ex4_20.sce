// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
//// Problem 4.20

//Given Data Set in the Problem
dens=1000
g=9.81
W=15696
w1=245.25
x=8
theta=4

//Calculations
GM=w1*x/(W*tan (theta/180*%pi))
mprintf("The meta centric height is %f m \n",GM)
