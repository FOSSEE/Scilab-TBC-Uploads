clc;
//Example 10.4
//page no 102 
printf(" Example 10.4 page n0 102 \n\n");
W_a=200//weight of material in air
W_w=120//weight of material in water
gamma_w=62.4//specific weight of water
printf("\n weight of air W_a=%f lbf\n weight of water W_w=%f lbf\n sp.weight of water gamma_w=%f lbf/ft^3",W_a,W_w,gamma_w);
F_b=W_a-W_w//buoyant force\
printf("\nbuoyant force F_b=%f lbf",F_b);
V_dis=F_b/gamma_w//volume displaced
printf("\n volume displaced V_dis=%f ft^3",V_dis);
rho_b=W_a/V_dis//density of block
printf("\n density of block rho_b=%f lb/ft^3",rho_b);//printing mistake in book
//assumption of rho_b>rho_w is justified
