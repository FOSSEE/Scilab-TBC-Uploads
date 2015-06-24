clc;
//Example 22.8
//page no 303
printf("Example 22.8 page no 303\n\n");
//refer to fig 22.1
D1=.1//upstream diameter(at station 1),m
D2=.06//downstream diameter(station 2),m
S2=(%pi/4)*D2^2//cross sectional area at point 2
rho=1.22//density of air  from ideal gas law
rho_m=827//density of medium,kg.m^3
g=9.8//gravitational acc.
h=0.08//manometer head,m
//from bernoulli equation
v2=sqrt(2*g*h*((rho_m/rho)-1))//velocity at point 2
v1=v2*(D2/D1)^2//velocity at point 1
q=v2*S2//volumatric flow rate
printf("\n vol.flow rate q=%f m^3/s",q);
//calculation of mach number from equation 15.1
T=293//temperature in k
c=20*sqrt(T)//speed of light at this temperature,m/s
M_a=v2/c//mach no.
printf("\n mach no. M_a =%f ",M_a);
//noting that M_a=0.095 < 0.3 , we can conclude that flow is incompressible//given 
P1=130000 //absolute pressure at point 1,pa
//by using bernoulli eq for P2
P2=P1-rho*v2^2*(1-(D2/D1)^4)/2//pressure at point 2
printf("\n pressure at point 2=%f Pa",P2);
