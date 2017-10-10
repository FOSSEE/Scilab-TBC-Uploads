// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.23

//Given Data Set in the Problem(SI Units)

p_i=70
p_f=130
dp=p_f-p_i
dV_V=0.15/100               //Using dV/V=-dP/P

//Calculations
//Using K=dP/(-dV/V)
K=dp/(dV_V)
mprintf("The Bulk modulus of elasticity of the liquid is %f N.cm^2",K);

