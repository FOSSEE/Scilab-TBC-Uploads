clc;
//Example 23.7
//page no 340
printf("\n Example 23.7 page no 340\n\n");
// In a plant manufacturing ivory soap detergent explodes one windy day
//we have to calculate the distance from the plant where the soap particles will start to deposit and where they will cease to deposit
//the smallest particle wll travel the greatest distance while the largest will travel the least distance 
//for the minimumdistance ,we use largest particle 
D_l=3.28e-3//largest diameter,ft
g=32.174//grav. acc.
SG=0.8//specific gravity of soap particle
rho_w=62.4
rho_p=SG*rho_w//density of particle
rho_a=0.0752//density of given atmosphere,lb/ft^3
meu=1.18e-5//viscosity 
K_l = D_l*(g*(rho_p-rho_a)*rho_p/(meu^2))^(1/3)//dimensionless constant
printf("\n dimensionless constant K_l=%f ",K_l);
//value of K indicates the intermediate range applies 
//the settling velocity is given by 
v_l=0.153*g^0.71*D_l^1.14*rho_p^0.71/(meu^0.43*rho_a^0.29)
printf("\n settling velocity v_l=%f ft/s",v_l);
H=400//vertical height blowen by particle,ft
t_l=H/v_l//descent time
v_w=20//wind velocity in miles/h
L=t_l*v_w*(5280/3600)//horizontal distance travelled by particles
printf("\n descent time t_l=%f second\n horizontal distance L=%f ft",t_l,L);
//for the minimum distance we use smallest particle
D_s=6.89e-6//diameter of smallest particle,ft
K_s=D_s*(g*(rho_p-rho_a)*rho_a/(meu^2))^(1/3)
printf("\n dimensionless constant K_s=%f ",K_s);
//velocity is in the stokes regime and is given by
v_s=g*D_s^2*rho_p/(18*meu)
printf("\n settling velocity v_s=%f ft/s",v_s);
t_s=H/v_s//descent time 
L_s=t_s*v_w*(5280/3600)//horizontal distance travelled 
printf("\n descent time t_s=%f s\nhorizontal distance travelled by smallest particle L_s=%f ft",t_s,L_s);
m=100*2000//mass of particles
V_act=m/rho_p//actual volume of particles
e=0.5//void fraction
V_b=V_act/e//bulk volume
printf("\ actual volume V_act=%f ft^3\nbulk volume V_b=%f ",V_act,V_b);
L_d=L_s-L//length of drop area
printf("\n L_d=%f ",L_d);
W=100//width ,ft
A_d=L_d*W//deposition area
H_d=V_b/A_d//deposition height
printf("\n deposition height H_d=%f ft",H_d);
//deposition height can be ,at bestt, described asa sprinkling 


