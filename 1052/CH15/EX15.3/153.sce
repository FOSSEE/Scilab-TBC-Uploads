clc;
//Example 15.3
//page no 170
printf("Example 15.3 page no 170\n\n");
//propane is flowing in a tube
k=1.3//degree of freedom for propane
T=290//temperature,k
M=44//mol. weight 
R=8314.4//gas constant
c=sqrt((k*R*T)/M)//speed of sound in propane
printf("\n speed of sound in propane c=%f m/s",c);
v=43//average velocity
M_a=v/c//mach no.
printf("\n M_a mach no=%f ",M_a);
//mach no is< 0.3,that's why flow is incompressible
rho=6.39//density,kg/m^3
meu=8e-6//viscosity ,m^2/s
D=0.0254//inside diameter of tube
R_e=D*rho*v/meu//reynolds no.
printf("\n reynolds no R_e=%f ",R_e);
//because R_e is >4000,flow is turbulent
