clear;
clc;

x=poly([0],'x');
printf("\tExample 16.1\n");

printf("\n\tPart A");
E_gf=69;  // in GPa  Elasticity of glass fibre
mf_gf=0.4;  //Vol % of glass fibre
E_pr=3.4;  // in GPa  Elasticity of poyester resin
mf_pr=0.6;  //Vol % of polyester resin

E_cl=(E_pr*mf_pr)+(E_gf*mf_gf);
printf("\nModulus of elasticity of composite is : %f GPa\n",E_cl);

//End