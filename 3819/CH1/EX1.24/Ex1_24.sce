// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.24

//Given Data Set in the Problem(SI Units)
V_i=0.0125
V_f=0.0124
p_i=80
p_f=150

//Caclulations 
dV=V_i-V_f
dV_V=-dV/V_i
dp=p_f-p_i
K=dp/(-dV_V)                //Using K=dP/(-dV/V)=Bulk modulus of elasticity
mprintf("The bulk modulus of elasticity of the liquid is %f N/cm^2",K);
