clear;
clc;

x=poly([0],'x');
printf("\tExample 16.1\n");

E_gf=69;  // in GPa  Elasticity of glass fibre
mf_gf=0.4;  //Vol % of glass fibre
E_pr=3.4;  // in GPa  Elasticity of poyester resin
mf_pr=0.6;  //Vol % of polyester resin

Ac=250;  //mm^2
sigma=50;  //MPa
f=(E_gf*mf_gf)/(E_pr*mf_pr);
Fc=Ac*sigma;  //N
Fm=roots(f*x+x-Fc);  //N

Ff=Fc-Fm;

printf("\n\tPart C");
Am=mf_pr*Ac;
Af=mf_gf*Ac;
sigma_m=Fm/Am;
sigma_f=Ff/Af;

e_m=sigma_m/E_pr;  //Strain for matrix phase
e_f=sigma_f/E_gf; //Strain for fiber phase

printf("\nStrain for matrix phase is : %f\n",e_m);
printf("\nStrain for fiber phase is : %f\n",e_f);

//End