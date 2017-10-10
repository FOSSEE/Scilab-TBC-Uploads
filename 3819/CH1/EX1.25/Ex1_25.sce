// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.25

//Given Data Set in the Problem(SI Units)
st=0.0725           //Surface tension
p=0.02*10^4

//Calculations 
//Using pressure =(4*Surface tension)/(diameter of the droplet)
d=4*st/p
mprintf("The diameter of the droplet is %f mm",d*10^3);
