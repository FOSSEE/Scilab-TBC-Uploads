clear;
clc;

x=poly([0],'x');
printf("\tExample 16.1\n");

E_gf=69;  // in GPa  Elasticity of glass fibre
mf_gf=0.4;  //Vol % of glass fibre
E_pr=3.4;  // in GPa  Elasticity of poyester resin
mf_pr=0.6;  //Vol % of polyester resin

printf("\n\tPart B");
Ac=250;  //mm^2
sigma=50;  //MPa
f=(E_gf*mf_gf)/(E_pr*mf_pr);
Fc=Ac*sigma;  //N
Fm=roots(f*x+x-Fc);  //N
printf("\nFm is : %f N\n",Fm);

Ff=Fc-Fm;
printf("\nLoad carried by each of fiber and matrix phase is : %f N\n",Ff);

//End