// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.20


//Given Data Set in the Problem(SI Units)
w=16
t=25
T=273+t
p=0.25*10^6
g=9.81

//Calculations
//1)Density
density=w/g
mprintf("The Density of the gas is %f kg/m^3 \n",density)

//2)Gas consatnt
R=p/(density*T)
mprintf("The gas constant is %f Nm/kg-K \n",R)
