clc;
//Example 27.5
//page no 415
printf("Example 27.5 page no 415\n\n");
//refer to example 27.4
meu=5.95e-4//viscosity 
g_c=32.174//grav. acc
P_drop=20*144//pressure drop
q_o=(1/217)//flow rate 
S=0.35//filteration area per unit
K_c=3894//coefficentc
c=4.142//slurry conentration  
R_m=S*g_c*P_drop/(q_o*meu)//filteration coeff.
printf("R_m=%f ft",R_m);
alpha=K_c*S^2*g_c*P_drop/(c*meu)//filteration coeff.
printf("\n alpha=%f ft/lb",alpha);
 
