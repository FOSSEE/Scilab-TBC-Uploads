// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 3.36

//Given Data Set in the Problem
dens=1000
g=9.81
L=6
b=2.5
H=2
a=2.4
AB=L

//calculations
tan_theta=a/g
BC=AB*tan_theta
Vol=(1/2*AB*BC)*b           //vol of spilled water
mprintf("The volume of spilled water is %f m^3\n",Vol)

