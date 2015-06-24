clc;
clear;
printf("\n Example 10.13\n");

D_e=1e-5;//Effective diffusivity for the reactants in the catalyst particle
k=14.4;//first order rate constant
L=2.5e-3;

lambda=(k/D_e)^0.5;
phi=(k/D_e)^0.5*(L);//Thiele modulus
//From equation 10.202, the effectiveness factor,
eta=(1/phi)*tanh(phi);
printf("\n (i) The effectiveness factor = %.3f",eta);
//The concentration profile is given by equation 10.198
y=1.25e-3;
C_Ai=0.15;
C_A=C_Ai*(cosh(lambda*y)/cosh(lambda*L));
printf("\n (ii) The concentration of reactant at a position half-way between the centre and the outside of the\n\t pellet = %.3f kmol/m^3",C_A);
