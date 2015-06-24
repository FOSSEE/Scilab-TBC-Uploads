clc;
//Example 26.5
//page no 389
printf("Example 26.5 page no 389\n\n");
//air  flowing through a 10 ft packed bed
V_o=4.65//superficial velocity,ft/s
meu_g=1.3e-5//viscosity of air 
rho_g=0.67//density of air,lb/ft^3
e=0.89//void volume
g_c=32.2//grav. constant
L=10//length of packed bed 
d_p=0.007815//effective particle diameter
P_drop = [(150*V_o*meu_g/(g_c*d_p^2))*((1-e)^2/e^3) + (1.75*rho_g*V_o^2/(g_c*d_p))*((1-e)^2/e^3)]*L//pressure drop
printf("\n pressure drop P_rop=%f lb/ft^2",P_drop);//calculation error in book 
 
