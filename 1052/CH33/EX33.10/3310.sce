clc;
//Example 33.10
//page no 532
printf("Example 33.10 page no 532\n\n");
//the flow of blood from the arota to the atrium is reprsented by a vessel
meu=1.1*6.72e-4//viscosity of blood
L=0.3//length of vessel,mile
g_c=32.2//grav. acc
rho=62.4//density of blood 
D=2.53/30.48//diameter of vessel,ft
P_drop=32*meu*(19/30.48)*5280*L/(rho*D^2*g_c)
printf("\n pressure drop P_drop=%f ft*lbf/lb",P_drop)
//snice the model is resonable from the fluid dynamics perspective
 
