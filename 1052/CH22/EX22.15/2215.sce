clc;
//Example 22.15
//page no 316
printf("\n Example 22.15 page no 316\n\n")
//liquid benzene flows through a smooth horizontal iron pipe 
D=2.3//diameter of pipe,m
L=146.304//length of pipe,m
S=(%pi/4)*D^2//cross sectional area,m^2
q=4000//vol. flow rate,gal/min
v=q/(S*264.17*60)//flow velocity
printf("\n flow velocity v=%f m/s",v);
rho=899//density of benzene
meu=0.0008//viscosity of benzene,kg/m.s
R_e = D*v*rho/meu//reynolds no
printf("\n reynolds no R_e=%f ",R_e);
//since the reynolds number falls in the turbulent regime,determine the fanning friction factor from fig. 14.2
f=0.0032//fanning friction factor
// calculation of pressure drop with the assumption of no height and velocity change , and no pump work 
//since only frictional losses are to be considered
//applying eq. 14.3
P_drop = 4*f*(L/D)*(v^2/2)*rho//pressure drop
printf("\n pressure drop P_drop=%f Pa",P_drop);
W_dot_f=q*P_drop/(264.17*60)//friction power loss
printf("\n friction power loss W_dot_f=%f W",W_dot_f);
