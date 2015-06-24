//Elastic Modulus Determination for a Glass Fiber-Reinforced Composite—Transverse Direction

clear;
clc;

printf("\tExample 16.2\n");
E_gf=69;  // in GPa  Elasticity of glass fibre
mf_gf=0.4;  //Vol % of glass fibre
E_pr=3.4;  // in GPa  Elasticity of poyester resin
mf_pr=0.6;  //Vol % of polyester resin

E_ct=E_pr*E_gf/((E_pr*mf_gf)+(E_gf*mf_pr));  //GPa

printf("\nIn transverse direction, modulus of elaticity is : %f GPa\n",E_ct);

//End