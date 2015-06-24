clear;
clc;

printf("\n Example 10.14\n");

R_r=8.2e-2;//reaction rate when concentration =0.011 kmol/m^3
D_e=7.5e-8;//Effective diffusivity

//Since the value of the first-order rate constant is not given, lambda and 
//phi_l cannot be calculated directly. The reaction rate per unit volume of 
//catalyst = eta*k*C_Ai (equation 10.217),
//eta=phi_L^-1
//It is assumed that the reactor is operating in this regime and the assumption 
//is then checked.Substituting numerical values in equation 10.217:
k=(1.217*R_r/0.011)^2;
phi_L=1.217*(k)^0.5;
eta=phi_L^-1;
printf("\n Effectiveness factor = %.4f",eta);