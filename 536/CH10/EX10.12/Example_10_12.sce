clc;
clear;

printf("\n Example 10.12\n");

k=5e-4;//first order rate constant
D_e=2e-9;//effective diffusivity of reactants in the pores of the particles

lambda=(k/D_e)^0.5;
// (i) For the platelet of thickness 8 mm,
L=0.5*(8e-3);
phi=lambda*L;//thiele modulus
//From equation 10.202, the effectiveness factor 'eta' is given by:
eta=(1/phi)*tanh(phi);
printf("\n (i) Thiele modulus = %.1f",phi);
printf("\n     The effectiveness factor = %.3f",eta);

//(ii) For the sphere of diameter 10 mm, r_o = 0.005 m^-1.
r_o=5e-3;
phi_o=lambda*r_o;//Thiele modulus
//From equation 10.212, the effectiveness factor 'eta' is given by:
eta_o=(3/phi_o)*(coth(phi_o)-(1/phi_o));
printf("\n (i) Thiele modulus = %.1f",phi_o);
printf("\n     The effectiveness factor = %.3f",eta_o);
