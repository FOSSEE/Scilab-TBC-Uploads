

clc

printf(" Example 15.2\n")
E_gf=69  // Elasticity of glass fibre in GPa 
mf_gf=0.4  //Volume percentage of glass fibre
E_pr=3.4  //  Elasticity of polyester resin in GPa
mf_pr=0.6  //Vol percentage of polyester resin

E_ct=E_pr*E_gf/((E_pr*mf_gf)+(E_gf*mf_pr))  // Calculation of modulus of elasticity in GPa

printf("\n In transverse direction, modulus of elasticity is %.1f GPa.\n",ceil(E_ct*10)/10)
