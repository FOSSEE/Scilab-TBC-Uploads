// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.7

//Given Data Set in the Problem
d=3
a=%pi/4*d^2
D=10
A=%pi/4*D^2
f=80
dens=1000
g=9.81

//Calculations
//When pistons are at same level
F=f/a*A
mprintf("The force on the large piston in level with the small piston  is %f N\n",F)

//When smaller piston is 40 cm above tha large piston
p=(dens*g*40/100)/10^4                          //pressure due to 40 cm of the liquid
F_=(f/a+p)*A
mprintf("The force on the large piston 40 cm below small piston is %f N\n",F_)
